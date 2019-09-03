<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Company;
use Carbon\Carbon;

class CompanyController extends Controller
{
    public function index(){
        return redirect(Route('company.visitor'));
    }

    public function visitor(){
        $crumbs = ['company', 'visitor'];
        return view('company/visitor')->with(['crumbs' => $crumbs]);
    }

    public function company(){
        $crumbs = ['company', 'company', 'overview'];
        return redirect(Route('company.company.overview'));
    }

    public function overview($id){
        $crumbs = ['company', 'company', 'overview'];
        $company = Company::find($id);
        return view('company/company')->with(['crumbs' => $crumbs, 'c_id' => $id, 'company' => $company]);
    }

    public function address($id){
        $crumbs = ['company', 'company', 'address'];
        $company = Company::find($id);
        return view('company/address')->with(['crumbs' => $crumbs, 'c_id' => $id, 'company' => $company]);
    }

    public function mission($id){
        $crumbs = ['company', 'company', 'mission'];
        $company = Company::find($id);
        return view('company/mission')->with(['crumbs' => $crumbs, 'c_id' => $id, 'company' => $company]);
    }

    public function jobpost($id){
        $crumbs = ['company', 'company', 'jobpost'];
        $company = Company::find($id);
        return view('company/jobpost')->with(['crumbs' => $crumbs, 'c_id' => $id, 'company' => $company]);
    }

    public function applicants($id){
        $crumbs = ['company', 'company', 'applicants'];
        $company = Company::find($id);
        return view('company/applicants')->with(['crumbs' => $crumbs, 'c_id' => $id, 'company' => $company]);
    }

    public function updates(){
        $crumbs = ['company', 'updates'];
        return view('company/updates')->with(['crumbs' => $crumbs]);
    }

    public function companies(){
       $companies = Company::all();
       foreach($companies as $key => $value){
            $companies[$key]->reg_date = formatDate($value->registration, 'm/d/Y');
            $companies[$key]->reg_time = formatDate($value->registration, 'H:i A');
       }
       return $companies;
    }

    public function jobposts(Request $request){
        $jobposts = \App\JobPost::where('company_id', $request->id)->get();
        foreach($jobposts as $index=>$value){
            $jobposts[$index]->date_posted = Carbon::parse($value->created_at)->format('m/d/Y');
        }
        return $jobposts;
    }
}
