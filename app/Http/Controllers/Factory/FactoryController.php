<?php

namespace App\Http\Controllers\Factory;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

use App\Models\Branch;
use App\Models\Purchaseorder;
use App\Models\Purchasecart;
use App\Models\Product;
use App\Models\Stock;
use App\Models\Category;
use App\Models\Subcategory;
use Auth;

class FactoryController extends Controller
{
    function generateChalanNum() {
        $userId = Auth::guard('admin')->user()->id;
        $date = now()->format('ymd');
        $serial = Purchaseorder::whereDate('created_at', now())->count() + 1;
        return $chalanNo = $date . str_pad($userId, 4, '0', STR_PAD_LEFT) . str_pad($serial, 8, '0', STR_PAD_LEFT);
    }

    public function factoryView(){
        $chalanReg = $this->generateChalanNum();
        $userId = Auth::guard('admin')->user()->id;
        $order = Purchaseorder::where('status', '!=', 4)->with('user','branchs')->paginate(20);
        return view('factory.factory', compact('order'));
    }

    public function orderViewById($reg){
        $orderCart = Purchasecart::where('chalan_reg', $reg)->get();
        //dd($orderCart);
        return view('factory.cartView', compact('orderCart'));
    }

    public function updateStatus(Request $request){
        $status = $request->input('cbxStatus','');
        $chalanNo = $request->input('txtChalanNo','');
        $order = Purchaseorder::where('chalan_reg', $chalanNo)->first();
        $order->status = $status;
        $order->update();
        return redirect()->back()->with('success', 'Order status update');
    }

    public function updateReadyDelivaryQty(Request $request){
        $chalanReg = $request->input('txtReg','');
        $ProductId = $request->input('txtProductId','');
        $ready = $request->input('ready_qty','');
        $delivery = $request->input('delivery_qty','');
        $order = Purchasecart::where('chalan_reg', $chalanReg)->where('product_id', $ProductId)->first();
        $order->ready_qty += $ready;
        $order->delivery_qty += $delivery;
        $order->update();
        return redirect()->back()->with('success', 'Updated successfully submited your ready & delivery qty.');
    }

    public function OrderListBranch(){
        $order = Purchaseorder::with('user','branchs')->paginate(20);
        $branch = Branch::with('manager')->paginate(20);
        return view('factory.branch', compact('order','branch'));
    }

    public function findBranchAndOrder(Request $request){
        $startDate = $request->input('dtpStart', '');
        $endDate = $request->input('dtpEnd', '');
        $branchId = $request->input('cbxBranch', '');

        if (empty($startDate) || empty($endDate) || empty($branchId)) {
            return redirect()->back()->with('warning', 'You must select date range and branch. Thank You!');
        }

         $branches = Branch::all();
        
        $findOrder = Purchaseorder::whereBetween('date', [$startDate, $endDate])
                                    ->where('branch', $branchId)
                                    ->with('user', 'branchs')
                                    ->paginate(20);
        // dd($findOrder);
        return view('factory.findOrderListByBranch', compact('findOrder','branches'));
    }
}
