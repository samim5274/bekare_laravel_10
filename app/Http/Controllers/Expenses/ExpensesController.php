<?php

namespace App\Http\Controllers\Expenses;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

use App\Models\Excategory;
use App\Models\Exsubcategory;
use App\Models\Expenses;
use Auth;

class ExpensesController extends Controller
{
    public function expensesView(){
        $date = Carbon::now()->format('Ymd');
        $category = Excategory::all();
        $expenses = Expenses::paginate(40);
        $total = Expenses::where('date', $date)->sum('amount');
        return view('expenses.expenses', compact('category','expenses','total'));
    }

    public function getSubcategory(Request $request, $id)
    {
        $subCategory = Exsubcategory::where('cat_id', $id)->get();
        return response()->json(['subCategory'=>$subCategory]);
    }

    public function expenses(Request $request){
        if(empty($request->input('cbxCategory', '')) || empty($request->input('cbxsubcategory', ''))){
            return redirect()->back()->with('success', 'Some information is missing. Please full fill all information & try again. Thank You!');
        }
        $userId = optional(Auth::guard('admin')->user())->id;
        if (!$userId) {
            return back()->withErrors(['error' => 'No admin user is logged in.']);
        }
        $data = new Expenses();
        $data->catId = $request->input('cbxCategory', '');
        $data->subcatId = $request->input('cbxsubcategory', '');
        $data->userId = $userId;
        $data->date = Carbon::now()->format('Ymd');
        $data->amount = $request->input('txtAmount', '');
        $data->save();
        return redirect()->back()->with('success', 'Daily expenses added successfully.');
    }

    Public function editExpenses($id){
        $expenses = Expenses::where('id', $id)->first();
        $category = Excategory::all();
        $subcategory = Exsubcategory::all();
        return view('expenses.edit-expenses', compact('expenses','category','subcategory'));
    }

    public function updateExpenses(Request $request, $id){
        if(empty($request->input('cbxCategory', '')) || empty($request->input('cbxsubcategory', ''))){
            return redirect()->back()->with('success', 'Some information is missing. Please full fill all information & try again. Thank You!');
        }
        $data = Expenses::where('id', $id)->first();
        $data->catId = $request->input('cbxCategory', '');
        $data->subcatId = $request->input('cbxsubcategory', '');
        $data->amount = $request->input('txtAmount', '');
        $data->remark = $request->input('txtRemark', '');
        $data->update();
        return redirect()->route('expenses.view')->with('success', 'Daily expenses edit successfully.');
    }

    public function expensesSpecificPrint($id){
        $date = Carbon::now()->format('Ymd');
        $expenses = Expenses::where('id', $id)->get();
        return view('report.expenses.specific-expenses-print', compact('expenses'));
    }

    public function expensesListPrint(){
        $date = Carbon::now()->format('Ymd');
        $expenses = Expenses::where('date', $date)->paginate(40);
        $total = Expenses::where('date', $date)->sum('amount');
        return view('report.expenses.print-expenses-list', compact('expenses','total'));
    }
}
