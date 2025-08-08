<?php

namespace App\Http\Controllers\Setting;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Admin;
use Auth;

class SettingController extends Controller
{
    public function setting(){
        $id = Auth::guard('admin')->user()->id;
        $user = Admin::where('id', $id)->with('branch')->first();
        return view('setting.setting', compact('user'));
    }
}
