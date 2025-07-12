<?php

namespace App\Http\Controllers\Order;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

use App\Models\Product;
use App\Models\Cart;
use App\Models\Order;
use App\Models\Stock;
use Auth;

class OrderController extends Controller
{
    public function confirmOrder(Request $request) {
        try{
            $order = new Order();
        
            $request->validate([
                'txtReg' => 'required',
                'txtSubTotal' => 'required',
            ]);

            $reg = $request->input('txtReg', '');
            
            $findReg = Order::where('reg', $reg)->first();
            if($findReg) {
                return redirect()->back()->with('error', 'This order already taken. Please add product to cart and try again. Thank You!');
            } 

            if($request->input('txtSubTotal', '') <= 0) {
                return redirect()->back()->with('error', 'Your cart is empty. Try again.');
            }        

            $received = $request->input('txtPay', 0);
            $total = $request->input('txtSubTotal', 0);
            $discount = $request->input('txtDiscount', 0);
            $vat = $request->input('txtVAT', 0);

            $newVat = $total * $vat / 100;
            $payable = ($total - $discount) + $newVat;
            $dueAmount = $payable - $received;
                        
            if($received <= 0) {
                return redirect()->back()->with('warning', 'You must be payment some amount. Unless you can not sale this product. Thanks');
            }

            $order->date = Carbon::now()->format('Y-m-d');
            $order->user_id = Auth::guard('admin')->user()->id;
            $order->reg = $reg;
            $order->total = $total;
            $order->discount = $discount;
            $order->vat = $newVat;
            $order->payable = $payable;

            if($received >= $payable) {
                $order->pay = $payable;
                $order->due = 0;
            } else {
                $order->pay = $received;
                $order->due = $dueAmount;
            }
            
            // Auto status set // 1 order confrim and 2 bill paid, 3 due
            if ($dueAmount > 0) {
                $order->status = 3; // Due
            } else {
                $order->status = 2; // Fully paid
            } 
            // dd($reg);
            $order->save();
            return response()->json([
                'success' => true,
                'reg' => $reg
            ]);
        } catch(Exception $e) {
            return redirect()->back()->with('error', 'Your cart is empty. Try again.'.$e);
        }
    }

    public function paymentOrder(){
        $order = Order::orderBy('id', 'desc')->paginate(15);
        $total = Order::sum('total');
        $discount = Order::sum('discount');
        $payable = Order::sum('payable');
        $pay = Order::sum('pay');
        $due = Order::sum('due');
        $vat = Order::sum('vat');
        return view('order.orderlist', compact('order', 'total', 'discount', 'payable', 'payable', 'pay', 'due', 'vat'));
    }

    public function dueCollection(Request $request, $reg) {
        $order = Order::where('reg', $reg)->first();

        if (!$order) {
            return back()->with('error', 'Order not found!');
        }

        $newPay = $request->input('txtPay', '');
        $newDiscount = $request->input('txtDiscount', '');

        $oldDue = $order->due;
        $oldPayable = $order->payable;

        if($newDiscount > $oldDue) {
            return redirect()->back()->with('warning', 'Discount more then due. It is not possible.');
        }
        
        $order->discount += $newDiscount;
        $newPayable = $oldPayable - $newDiscount;
        $order->payable = $newPayable;

        if ($newPay >= $newPayable || $newPay >= $oldDue) {
            $order->pay = $newPayable;
        } else {
            $order->pay += $newPay;
        }

        $newDue = $newPayable - $order->pay;
        $order->due = $newDue;

        $order->status = ($order->due <= 0) ? 2 : 3;

        // dd($order);
        $order->update();
        return redirect()->back()->with('success', 'Due collection successfully done. ORD-'.$reg);
    }

    public function printAllOrder() {
        $order = Order::orderBy('id', 'desc')->get();
        $total = Order::sum('total');
        $discount = Order::sum('discount');
        $payable = Order::sum('payable');
        $pay = Order::sum('pay');
        $due = Order::sum('due');
        $vat = Order::sum('vat');
        // dd($order);
        return view('order.print.printOrderlist', compact('order', 'total', 'discount', 'payable', 'payable', 'pay', 'due', 'vat'));
    }

    public function specificOrderPrint($reg){
        $order = Order::where('reg', $reg)->orderBy('id', 'desc')->firstOrFail();        
        $cart = Cart::where('reg', $reg)->get();
        // dd($cart);
        return view('order.print.printSpecificOrderlist', compact('order','cart'));
    }
}
