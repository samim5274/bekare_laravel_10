<?php

namespace App\Http\Controllers\Factory;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Pagination\LengthAwarePaginator;

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
        $order->ready_qty = $ready;
        $order->delivery_qty = $delivery;
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

    public function productOrder(){
        $product = Product::orderByRaw('LOWER(name) ASC')->get()->keyBy('id');
        $stockSummary = Purchasecart::with('product')
                            ->select('product_id', 
                                DB::raw('SUM(order_qty) as order_qty'), 
                                DB::raw('SUM(ready_qty) as ready_qty'),
                                DB::raw('SUM(delivery_qty) as delivery_qty'))
                            ->whereDate('date', Carbon::today())
                            ->groupBy('product_id')->get();

        $totalOrder_qty = $stockSummary->sum('order_qty');
        $totalReady_qty = $stockSummary->sum('ready_qty');
        $totalDelivery_qty = $stockSummary->sum('delivery_qty');

        $perPage = 20;
        $currentPage = LengthAwarePaginator::resolveCurrentPage();

        $paginatedSummary = new LengthAwarePaginator(
            $stockSummary->forPage($currentPage, $perPage),
            $stockSummary->count(),
            $perPage,
            $currentPage,
            ['path' => request()->url(), 'query' => request()->query()]
        );

        $productIds = $paginatedSummary->pluck('product_id')->toArray();
        $products = Product::whereIn('id', $productIds)->get()->keyBy('id');

        // dd($product,$stockSummary,$totalOrder_qty,$totalReady_qty,$totalDelivery_qty,$paginatedSummary);
        return view('factory.productOrder', compact('product','stockSummary','totalOrder_qty','totalReady_qty','totalDelivery_qty','paginatedSummary'));
    }

    public function findOrderStock(Request $request){
        $product = Product::orderByRaw('LOWER(name) ASC')->get()->keyBy('id');
        $item = $request->input('cbxProduct', '');        
        if(!$item){
            return redirect()->back()->with('warning', 'You need must be select Product.');
        }
        $stock = Purchasecart::where('product_id', $item)->paginate(20);
        $stockOrder = Purchasecart::where('product_id', $item)->sum('order_qty');
        $stockReady = Purchasecart::where('product_id', $item)->sum('ready_qty');
        $stockDelivery = Purchasecart::where('product_id', $item)->sum('delivery_qty');
        // dd($stock,$stockOrder,$stockReady,$stockDelivery);

        // if ($request->has('print')) {
        //     return view('report.stock.productStockPrint', compact('product','stock','stockOut','stockIn'));
        // }
        return view('factory.productOrder', compact('product','stockOrder','stockReady','stockDelivery','stock'));
    }

    public function findOrderStockId($id){
        $product = Product::orderByRaw('LOWER(name) ASC')->get()->keyBy('id');
        $item = $id;
        if(!$item){
            return redirect()->back()->with('warning', 'You need must be select Product.');
        }
        $stock = Purchasecart::where('product_id', $item)->paginate(20);
        $stockOrder = Purchasecart::where('product_id', $item)->sum('order_qty');
        $stockReady = Purchasecart::where('product_id', $item)->sum('ready_qty');
        $stockDelivery = Purchasecart::where('product_id', $item)->sum('delivery_qty');
        return view('factory.productOrder', compact('product','stockOrder','stockReady','stockDelivery','stock'));
    }

    public function receivedOrder(){
        $order = Purchaseorder::where('status', 2)->where('date', Carbon::today())->with('user','branchs')->paginate(20);
        return view('factory.receivedOrder', compact('order'));
    }

    public function FindReceivedOrder(Request $request){
        $start = $request->input('dtpStart','');
        $end = $request->input('dtpEnd','');
        $order = Purchaseorder::where('status', 2)->whereBetween('date', [$start, $end])->with('user','branchs')->paginate(20);
        return view('factory.receivedOrder', compact('order'));
    }

    public function deliveryOrder(){
        $branch = Auth::guard('admin')->user()->branch_id;
        $order = Purchaseorder::where('date', Carbon::today())->where('status', 4)->where('branch', $branch)->with('user','branchs')->paginate(20);
        return view('factory.delivaryOrder', compact('order'));
    }

    public function searchDeliveryOrder(Request $request){
        $start = $request->input('dtpStart','');
        $end = $request->input('dtpEnd','');
        $branch = Auth::guard('admin')->user()->branch_id;
        $order = Purchaseorder::whereBetween('date', [$start, $end])->where('status', 4)->where('branch', $branch)->with('user','branchs')->paginate(20);
        return view('factory.delivaryOrder', compact('order'));
    }

    public function deliveryCart($reg){        
        $deliveryCart = Purchasecart::where('chalan_reg', $reg)->get();
        return view('factory.deliveryCart', compact('deliveryCart'));
    }

    public function stockReceived($p_id, $reg){
        $product = Product::where('id', $p_id)->first();
        $purchasecart = Purchasecart::where('chalan_reg', $reg)->where('product_id', $p_id)->first();

        $product->stock += $purchasecart->delivery_qty;
        $purchasecart->status = 2;

        $stock = new Stock();
        $stock->reg = $reg;
        $stock->date = Carbon::today();
        $stock->product_id = $p_id;
        $stock->stockIn = $purchasecart->delivery_qty;
        $stock->stockOut = 0;
        $stock->remark = 'In from Factory.';
        $stock->status = 2;
        $product->update();
        $purchasecart->update();
        $stock->save();
        // dd($product, $purchasecart,$stock);
        return redirect()->back()->with('success','Stock received successfully.');
    }
}
