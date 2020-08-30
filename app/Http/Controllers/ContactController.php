<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ContactController extends Controller
{
     // secure shopping
     public function shippingReturn(){
        return view('front-end.content.shipping');
    }

    //contact us
    public function contact(Request $request){
        return view('front-end.content.contact');
    }
}
