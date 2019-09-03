<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Carbon\Carbon;

class AlumnusController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $crumbs = ['alumnus', 'portal'];
        return view('alumnus/index')->with('crumbs', $crumbs);
    }

    public function updates()
    {
        $crumbs = ['alumnus', 'updates'];
        return view('alumnus/updates')->with('crumbs', $crumbs);;
    }

    public function batch(Request $request){
        $batch = $request->batch;
        $res = (new \App\Alumnus())->batch($batch);
        foreach ($res as $key => $value) {
            $res[$key]->address = (new \App\Alumnus())->address($value->spi_id);
            $res[$key]->bday = formatBirth($value->birthdate, 'F d, Y');
            $res[$key]->age = calculateAge($value->birthdate);
        }
        return $res;
    }

    public function fetchFamily(){
        $family = (new \App\alumnus())->fetchFamily($spi_id);
        if(!empty($family)){
            
        }   
    }

    public function updateInit(){
        $updates = (new \App\UpdatesMonitor())->studentUpdates();
        $res = [];
        foreach($updates as $update){
            $res[] = pickEm($update, ['ssi_id', 'fname','mname','lname','sch_name','prog_name']);
        }
        return $res;
    }

    public function alumnusUpdates(Request $request){
        $updates = \App\UpdatesMonitor::where('ssi_id', $request->id)->get();
        foreach($updates as $index => $update){
            $updates[$index]->date = Carbon::parse($update->create_at)->format('F d, Y');
            $updates[$index]->time = Carbon::parse($update->create_at)->format('h:i A');
        }
        return $updates;
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
