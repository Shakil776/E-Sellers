<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Validator;
use App\Admin;
use Auth;
use Session;

class AdminAuthenticationController extends Controller
{
    public function showLoginForm(){
        if (Session::get('adminId')) {
            return redirect('/dashboard');
        } else{
            return view('admin.auth.login.login');
        }
    }

    public function checkAdminLogin(Request $request){

        $validator = Validator::make(array(
            "email" => $request->email,
            "password" => $request->password
        ),array(
            "email" => "required",
            "password" => "required"
        ));

        if ($validator->fails()) {
            return redirect('admin-login')->withErrors($validator)->withInput();
        } else {
            $admin_info = array(
                "email" => $request->email,
                "password" => $request->password
            );

            if (auth()->guard('admin')->attempt($admin_info)) {
                $adminId = Auth::guard('admin')->user()->id;
                Session::put('adminId', $adminId);
                return redirect("/dashboard");
            } else{
                $error_message = "Invalid Email or Password!";
                return redirect()->back()->withErrors($error_message);
            }
        }
    }



    // admin registration
    public function showRegisterForm() {
    	return view('admin.auth.register.register');
    }

    public function adminRegister(Request $request){

    	$this->validateRegister($request);
        $imageUrl = $this->adminProfilePhotoUpload($request);
        $admin = new Admin();
        $admin->name = $request->get('name');
        $admin->email = $request->get('email');
        $admin->mobile = $request->get('mobile');
        $admin->admin_profile_photo = $imageUrl;
        $admin->password = Hash::make($request->get('password'));
        $admin->remember_token = $request->get('_token');
        $admin->save();
    	return redirect('/dashboard')->with("message", "New Admin Added Successfully Complete in this System.");
    }

    protected function validateRegister(Request $request){
        $request->validate([
            'name' => 'required | max:25',
            'email' => 'required | string | email',
            'mobile' => 'required | min:11',
            'admin_profile_photo' => 'image | mimes:jpeg,jpg,png | max:5000',
            'password' => 'required | string | min:8',
            // 'password_confirmation' => 'confirmed'
        ]);
    }

    // admin profile photo upload
    protected function adminProfilePhotoUpload($request) {

        if ($request->hasFile('admin_profile_photo')) {
            $profileImage   = $request->file('admin_profile_photo');
            $imageExtension = $profileImage->getClientOriginalExtension();
            $imageName      = 'app_'.time().'.'.$imageExtension;
            $directory      = 'uploads/admin-profile-image/';
            $profileImage->move($directory, $imageName);
            return $imageUrl  = $directory.$imageName;
        }

    }

    // logout
    public function adminLogout(){
        Session::flush();

        if(Auth::guard("admin")){
            Auth::guard("admin")->logout();
            return redirect('/admin-login');
        }
    }

}
