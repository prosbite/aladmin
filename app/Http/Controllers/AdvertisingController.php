<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdvertisingController extends Controller
{
    public function index(){
        return redirect(Route('advertising.register.company'));
    }

    public function company(){
        $crumbs = ['advertising', 'register', 'company'];
        return view('advertising.register.company')->with('crumbs', $crumbs);
    }

    public function products(){
        $crumbs = ['advertising', 'register', 'products'];
        return view('advertising.register.products')->with('crumbs', $crumbs);
    }
}
