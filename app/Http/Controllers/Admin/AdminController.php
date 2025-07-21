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
            $branch = Auth::guard('admin')->user()->branch;
            return redirect('/')->with('success', 'Welcome back, ' . $username);
        }

        return redirect()->back()->with('error', 'Invalid email or password. Please try again!');
    }

    public function profile(){
        $id = Auth::guard('admin')->user()->id;
        $user = Admin::where('id', $id)->with('branches')->first();
        return view('profile.profile', compact('user'));
    }

    public function editProfile(){
        $id = Auth::guard('admin')->user()->id;
        $user = Admin::where('id', $id)->with('branches')->first();
        return view('profile.edit-profile', compact('user'));
    }

    public function updateProfile(Request $request, $id){
        $user = Admin::where('id', $id)->with('branches')->first();
        if(empty($user)){
            return redirect()->back()->with('error', 'User not found. Please try again!');
        }

        $request->validate([
            'photo' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        $user->name = $request->input('name');
        $user->phone = $request->input('phone');
        $user->dob = $request->input('dob');
        $password = Hash::make($request->input('password'));
        
        if (!Hash::check($request->input('password'), $user->password)) {
            return redirect()->back()->with('error', 'Password not match. Please try again.');
        }
        
        if ($request->hasFile('fileImage')) {

            if ($user->photo) {
                $path = public_path('img/employee/' . $user->photo);
                logger("Trying to delete: " . $path);
                if (file_exists($path)) {
                    unlink($path);
                } else {
                    logger("File not found: " . $path);
                }
            }

            if ($request->hasFile('fileImage')) {
                $file = $request->file('fileImage');

                if ($file->isValid()) {
                    $ext = $file->getClientOriginalExtension();
                    $fileName = 'user-' . time() . '.' . $ext;

                    $location = public_path('img/employee/');

                    if (!file_exists($location)) {
                        mkdir($location, 0755, true);
                    }

                    $file->move($location, $fileName);
                    $user->photo = $fileName;
                }
            }else {
                $user->photo = $user->photo ?? 'default.jpg';
            }
            $user->update();
            return redirect()->route('profile.edit.view')->with('success', 'Product updated successfully.');
        }
    }

    public function createAccount(){
        return view('auth.register');
    }

}
