<?php

namespace App\Http\Controllers\Report;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

use App\Models\Product;
use App\Models\Cart;
use App\Models\Order;
use App\Models\Stock;
use Auth;

class ReportController extends Controller
{
    public function totalSale(){
        $order = Order::orderBy('id', 'desc')->paginate(15);
        $total = Order::sum('total');
        $discount = Order::sum('discount');
        $payable = Order::sum('payable');
        $pay = Order::sum('pay');
        $due = Order::sum('due');
        $vat = Order::sum('vat');
        return view('report.sale.total-sale-report', compact('order', 'total', 'discount', 'payable', 'payable', 'pay', 'due', 'vat'));
    }

    public function printTotalSale(){
        $order = Order::orderBy('id', 'desc')->get();
        $total = Order::sum('total');
        $discount = Order::sum('discount');
        $payable = Order::sum('payable');
        $pay = Order::sum('pay');
        $due = Order::sum('due');
        $vat = Order::sum('vat');
        return view('report.print.printTotalSale', compact('order', 'total', 'discount', 'payable', 'payable', 'pay', 'due', 'vat'));
    }

    public function dueList() {
        $order = Order::where('status', 3)->orderBy('id', 'desc')->paginate(15);
        $total = Order::where('status', 3)->sum('total');
        $discount = Order::where('status', 3)->sum('discount');
        $payable = Order::where('status', 3)->sum('payable');
        $pay = Order::where('status', 3)->sum('pay');
        $due = Order::where('status', 3)->sum('due');
        $vat = Order::where('status', 3)->sum('vat');
        return view('report.sale.total-due-report', compact('order', 'total', 'discount', 'payable', 'payable', 'pay', 'due', 'vat'));
    }

    public function printDue(){
        $order = Order::where('status', 3)->orderBy('id', 'desc')->get();
        $total = Order::where('status', 3)->sum('total');
        $discount = Order::where('status', 3)->sum('discount');
        $payable = Order::where('status', 3)->sum('payable');
        $pay = Order::where('status', 3)->sum('pay');
        $due = Order::where('status', 3)->sum('due');
        $vat = Order::where('status', 3)->sum('vat');
        return view('report.print.printDuelist', compact('order', 'total', 'discount', 'payable', 'payable', 'pay', 'due', 'vat'));
    }

    public function paidList(){
        $order = Order::where('status', 2)->orderBy('id', 'desc')->paginate(15);
        $total = Order::where('status', 2)->sum('total');
        $discount = Order::where('status', 2)->sum('discount');
        $payable = Order::where('status', 2)->sum('payable');
        $pay = Order::where('status', 2)->sum('pay');
        $due = Order::where('status', 2)->sum('due');
        $vat = Order::where('status', 2)->sum('vat');
        return view('report.sale.total-paid-report', compact('order', 'total', 'discount', 'payable', 'payable', 'pay', 'due', 'vat'));
    }

    public function printPaid() {
        $order = Order::where('status', 2)->orderBy('id', 'desc')->paginate(15);
        $total = Order::where('status', 2)->sum('total');
        $discount = Order::where('status', 2)->sum('discount');
        $payable = Order::where('status', 2)->sum('payable');
        $pay = Order::where('status', 2)->sum('pay');
        $due = Order::where('status', 2)->sum('due');
        $vat = Order::where('status', 2)->sum('vat');
        return view('report.print.printPaidlist', compact('order', 'total', 'discount', 'payable', 'payable', 'pay', 'due', 'vat'));
    }

    public function selsectDayWiseSaleReport(){
        $start = Carbon::now()->format('Ymd');
        $end = Carbon::now()->format('Ymd');
        $data = Order::whereBetween('date', [$start, $end])->orderBy('id', 'desc')->paginate(15);
        $total = Order::whereBetween('date', [$start, $end])->sum('total');
        $discount = Order::whereBetween('date', [$start, $end])->sum('discount');
        $payable = Order::whereBetween('date', [$start, $end])->sum('payable');
        $pay = Order::whereBetween('date', [$start, $end])->sum('pay');
        $due = Order::whereBetween('date', [$start, $end])->sum('due');
        $vat = Order::whereBetween('date', [$start, $end])->sum('vat');
        return view('report.sale.select-date-wise-sale-report', compact('data', 'total', 'discount', 'payable', 'payable', 'pay', 'due', 'vat'));
    }

    public function selsectDayWiseSaleReportFind(Request $request) {
        $start = $request->input('dtpStartDate','');
        $end = $request->input('dtpEndDate','');
        $data = Order::whereBetween('date', [$start, $end])->orderBy('id', 'desc')->paginate(15);
        if(empty($data)){
            return redirect()->back()->with('error', 'Day wise data not found. Please try to find another day wise data searching. Thanks');
        }
        $total = Order::whereBetween('date', [$start, $end])->sum('total');
        $discount = Order::whereBetween('date', [$start, $end])->sum('discount');
        $payable = Order::whereBetween('date', [$start, $end])->sum('payable');
        $pay = Order::whereBetween('date', [$start, $end])->sum('pay');
        $due = Order::whereBetween('date', [$start, $end])->sum('due');
        $vat = Order::whereBetween('date', [$start, $end])->sum('vat');
        if ($request->has('print')) {
            return view('report.print.printSelectDayTotalSale', compact('data', 'total', 'discount', 'payable', 'payable', 'pay', 'due', 'vat','start','end'));
        }
        return view('report.sale.select-date-wise-sale-report', compact('data', 'total', 'discount', 'payable', 'payable', 'pay', 'due', 'vat'));
    }

    public function selsectDayWisePaidSaleReport(){
        $start = Carbon::now()->format('Ymd');
        $end = Carbon::now()->format('Ymd');
        $data = Order::whereBetween('date', [$start, $end])->where('status', 2)->orderBy('id', 'desc')->paginate(15);
        $total = Order::whereBetween('date', [$start, $end])->where('status', 2)->sum('total');
        $discount = Order::whereBetween('date', [$start, $end])->where('status', 2)->sum('discount');
        $payable = Order::whereBetween('date', [$start, $end])->where('status', 2)->sum('payable');
        $pay = Order::whereBetween('date', [$start, $end])->where('status', 2)->sum('pay');
        $due = Order::whereBetween('date', [$start, $end])->where('status', 2)->sum('due');
        $vat = Order::whereBetween('date', [$start, $end])->where('status', 2)->sum('vat');
        return view('report.sale.select-date-wise-paid-sale-report', compact('data', 'total', 'discount', 'payable', 'payable', 'pay', 'due', 'vat'));
    }

    public function selsectDayWisePaidSaleReportFind(Request $request) {
        $start = $request->input('dtpStartDate','');
        $end = $request->input('dtpEndDate','');
        $data = Order::whereBetween('date', [$start, $end])->where('status', 2)->orderBy('id', 'desc')->paginate(15);
        $total = Order::whereBetween('date', [$start, $end])->where('status', 2)->sum('total');
        $discount = Order::whereBetween('date', [$start, $end])->where('status', 2)->sum('discount');
        $payable = Order::whereBetween('date', [$start, $end])->where('status', 2)->sum('payable');
        $pay = Order::whereBetween('date', [$start, $end])->where('status', 2)->sum('pay');
        $due = Order::whereBetween('date', [$start, $end])->where('status', 2)->sum('due');
        $vat = Order::whereBetween('date', [$start, $end])->where('status', 2)->sum('vat');
        if ($request->has('print')) {
            return view('report.print.printSelectDayTotalPaidSale', compact('data', 'total', 'discount', 'payable', 'payable', 'pay', 'due', 'vat','start','end'));
        }
        return view('report.sale.select-date-wise-paid-sale-report', compact('data', 'total', 'discount', 'payable', 'payable', 'pay', 'due', 'vat'));
    }

    public function selsectDayWiseDueSaleReport(){
        $start = Carbon::now()->format('Ymd');
        $end = Carbon::now()->format('Ymd');
        $data = Order::whereBetween('date', [$start, $end])->where('status', 3)->orderBy('id', 'desc')->paginate(15);
        $total = Order::whereBetween('date', [$start, $end])->where('status', 3)->sum('total');
        $discount = Order::whereBetween('date', [$start, $end])->where('status', 3)->sum('discount');
        $payable = Order::whereBetween('date', [$start, $end])->where('status', 3)->sum('payable');
        $pay = Order::whereBetween('date', [$start, $end])->where('status', 3)->sum('pay');
        $due = Order::whereBetween('date', [$start, $end])->where('status', 3)->sum('due');
        $vat = Order::whereBetween('date', [$start, $end])->where('status', 3)->sum('vat');
        return view('report.sale.select-date-wise-due-sale-report', compact('data', 'total', 'discount', 'payable', 'payable', 'pay', 'due', 'vat'));
    }

    public function selsectDayWiseDueSaleReportFind(Request $request) {
        $start = $request->input('dtpStartDate','');
        $end = $request->input('dtpEndDate','');
        $data = Order::whereBetween('date', [$start, $end])->where('status', 3)->orderBy('id', 'desc')->paginate(15);
        $total = Order::whereBetween('date', [$start, $end])->where('status', 3)->sum('total');
        $discount = Order::whereBetween('date', [$start, $end])->where('status', 3)->sum('discount');
        $payable = Order::whereBetween('date', [$start, $end])->where('status', 3)->sum('payable');
        $pay = Order::whereBetween('date', [$start, $end])->where('status', 3)->sum('pay');
        $due = Order::whereBetween('date', [$start, $end])->where('status', 3)->sum('due');
        $vat = Order::whereBetween('date', [$start, $end])->where('status', 3)->sum('vat');
        if ($request->has('print')) {
            return view('report.print.printSelectDayTotalDueSale', compact('data', 'total', 'discount', 'payable', 'payable', 'pay', 'due', 'vat','start','end'));
        }
        return view('report.sale.select-date-wise-due-sale-report', compact('data', 'total', 'discount', 'payable', 'payable', 'pay', 'due', 'vat'));
    }

    public function itemSale(){
        $start = Carbon::now()->format('Ymd');
        $end = Carbon::now()->format('Ymd');
        $product = Product::all();
        $cart = Cart::whereBetween('date', [$start, $end])->orderBy('id', 'desc')->paginate(15);
        $price = Cart::whereBetween('date', [$start, $end])->sum('price');
        return view('report.sale.itemSaleReport', compact('cart', 'price', 'product'));
    }

    public function itemWiseSaleFind(Request $request) {
        $item = $request->input('cbxProduct', '');
        $product = Product::all();
        $cart = Cart::where('product_id', $item)->orderBy('id', 'desc')->paginate(15);
        $price = Cart::where('product_id', $item)->sum('price');
        if ($request->has('print')) {
            return view('report.print.itemWiseReportPrint', compact('cart', 'price', 'product','item'));
        }
        return view('report.sale.item-wise-report', compact('cart', 'price', 'product'));
    }

    public function itemDateReport(){
        $start = Carbon::now()->format('Ymd');
        $end = Carbon::now()->format('Ymd');
        $product = Product::all();
        $cart = Cart::whereBetween('date', [$start, $end])->orderBy('id', 'desc')->paginate(15);
        $price = Cart::whereBetween('date', [$start, $end])->sum('price');
        return view('report.sale.itemDateSaleReport', compact('cart', 'price', 'product'));
    }

    public function dateItemReport(Request $request) {
        $start = $request->input('dtpStartDate','');
        $end = $request->input('dtpEndDate','');
        $item = $request->input('cbxProduct', '');
        if(!$item){
            return redirect()->back()->with('warning', 'You need must be select item.');
        }
        $product = Product::all();
        $price = Cart::where('product_id', $item)->whereBetween('date', [$start, $end])->sum('price');
        $cart = Cart::where('product_id', $item)->whereBetween('date', [$start, $end])->orderBy('id', 'desc')->paginate(15);
        if ($request->has('print')) {
            return view('report.print.itemDateSaleReportPrint', compact('cart', 'price', 'product','start','end'));
        }
        return view('report.sale.itemDateSaleReport', compact('cart', 'price', 'product','start','end'));
    }
}
