<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

use Auth;
use Session;
use App\Models\Admin;

class AdminController extends Controller
{
    public function userLogin(Request $request)
    {
        $request->validate([
            'txtEmail' => 'required|email',
            'txtPassword' => 'required',
        ]);

        $credentials = [
            'email' => $request->txtEmail,
            'password' => $request->txtPassword,
            'status' => 1,
        ];

        $remember = $request->has('remember');

        if (Auth::guard('admin')->attempt($credentials, $remember)) {
            $userId = Auth::guard('admin')->id();
            $username = Auth::guard('admin')->user()->name;

            return redirect('/')->with('success', 'Welcome back, ' . $username);
        }

        return redirect()->back()->with('error', 'Invalid email or password. Please try again!');
    }


}
