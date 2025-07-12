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
}
