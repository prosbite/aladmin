<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ReportsController extends Controller
{
    public function index(){
        return redirect(Route('reports.tesda'));
    }

    public function tesda(){
        $crumbs = ['reports', 'tesda'];
        return view('reports.tesda')->with('crumbs', $crumbs);
    }
}
