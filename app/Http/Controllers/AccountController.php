<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AccountController extends Controller
{
    public function index(){
        return redirect(Route('account.admin'));
    }

    public function admin(){
        $crumbs = ['account', 'admin'];
        return view('account.admin')->with('crumbs', $crumbs);
    }

    public function alumnus(){
        $crumbs = ['account', 'alumnus'];
        return view('account.alumnus')->with('crumbs', $crumbs);
    }

    public function partners(){
        $crumbs = ['account', 'partners'];
        return view('account.partners')->with('crumbs', $crumbs);
    }
}
