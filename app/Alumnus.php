<?php

namespace App;
use DB;

use Illuminate\Database\Eloquent\Model;

class Alumnus extends Model
{

    public function graduates($batch){
        $grad = DB::table('sis_main_db.stud_sch_info')
                ->join('sis_main_db.stud_per_info', 'sis_main_db.stud_sch_info.spi_id', 'sis_main_db.stud_per_info.spi_id')
                ->join('sis_main_db.stud_prog_taken', 'sis_main_db.stud_sch_info.ssi_id', 'sis_main_db.stud_prog_taken.ssi_id')
                ->join('sis_main_db.stud_stat_list', 'sis_main_db.stud_prog_taken.stat_id', 'sis_main_db.stud_stat_list.stat_id')
                ->where('sis_main_db.stud_stat_list.stat_name', 'graduate')
                ->where('sis_main_db.stud_prog_taken.sch_year', $batch)
                ->get();
                  
        return $grad;
    }

    public function alumnus(){
        $alumnus = DB::table('sis_main_db.stud_stat_list')->where('stat_name', 'graduate')->get();
        return $alumnus;
    }


    public function batch($batch){
        $grad = DB::table('sis_main_db.stud_sch_info')
                ->join('sis_main_db.stud_per_info', 'sis_main_db.stud_sch_info.spi_id', 'sis_main_db.stud_per_info.spi_id')
                ->join('sis_main_db.stud_prog_taken', 'sis_main_db.stud_sch_info.ssi_id', 'sis_main_db.stud_prog_taken.ssi_id')
                ->join('sis_main_db.stud_stat_list', 'sis_main_db.stud_prog_taken.stat_id', 'sis_main_db.stud_stat_list.stat_id')
                ->join('sis_main_db.citizenship', 'sis_main_db.citizenship.cit_id', 'sis_main_db.stud_per_info.cit_id')
                ->join('sis_main_db.student_phone', 'sis_main_db.student_phone.spi_id', 'sis_main_db.stud_per_info.spi_id')
                ->join('sis_main_db.phone_numbers', 'sis_main_db.phone_numbers.phone_id', 'sis_main_db.student_phone.phone_id')
                ->join('sis_main_db.email_student', 'sis_main_db.email_student.spi_id', 'sis_main_db.stud_per_info.spi_id')
                ->join('sis_main_db.emails', 'sis_main_db.emails.email_id', 'sis_main_db.email_student.email_id')
                ->join('sis_main_db.program_list', 'sis_main_db.program_list.pl_id', 'sis_main_db.stud_prog_taken.pl_id')
                ->where('sis_main_db.stud_stat_list.stat_name', 'graduate')
                ->where('sis_main_db.stud_prog_taken.sch_year', $batch)
                ->get();
                  
        return $grad;
    }

    



    ////////////////////////////// PERSONAL INFO //////////////////////////////////////////////////

    public function personalInfo(){
        $fi = DB::table('sis_main_db.stud_sch_info')
                ->join('sis_main_db.stud_per_info', 'sis_main_db.stud_sch_info.spi_id', 'sis_main_db.stud_per_info.spi_id')
                ->join('sis_main_db.stud_prog_taken', 'sis_main_db.stud_sch_info.ssi_id', 'sis_main_db.stud_prog_taken.ssi_id')
                ->join('sis_main_db.stud_stat_list', 'sis_main_db.stud_prog_taken.stat_id', 'sis_main_db.stud_stat_list.stat_id')
                ->where('sis_main_db.stud_stat_list.stat_name', 'graduate')
                ->where('sis_main_db.stud_prog_taken.sch_year', $batch)
                ->get();
            
        return $fi ;
    }

    // public function address($id){
    //     $address = DB::table('sis_main_db.address')
    //             ->join('sis_main_db.s_main_address', 'sis_main_db.s_main_address.add_id', 'sis_main_db.address.add_id')
    //             ->join('sis_main_db.city', 'sis_main_db.city.city_id', 'sis_main_db.address.city_id')
    //             ->join('sis_main_db.brgy', 'sis_main_db.brgy.brgy_id', 'sis_main_db.address.brgy_id')
    //             ->join('sis_main_db.prov', 'sis_main_db.prov.province_id', 'sis_main_db.address.province_id')
    //             ->join('sis_main_db.country', 'sis_main_db.country.country_id', 'sis_main_db.address.country_id')
    //             ->join('sis_main_db.regions', 'sis_main_db.regions.reg_id', 'sis_main_db.address.address.reg_id')
    //             ->join('sis_main_db.stud_per_info', 'sis_main_db.s_main_address.spi_id', 'sis_main_db.stud_per_info.spi_id')
    //             ->select('sis_main_db.city.city_name','sis_main_db.brgy.brgy_name','sis_main_db.country.country_name',
    //                     'sis_main_db.regions.country_id','sis_main_db.address.street')
    //             ->where('sis_main_db.stud_per_info.spi_id', $id)
    //             ->get();
    // }

    public function address($id){
        $address = DB::table('sis_main_db.address')
                ->join('sis_main_db.s_main_address', 'sis_main_db.s_main_address.add_id', 'sis_main_db.address.add_id')
                ->join('sis_main_db.city', 'sis_main_db.city.city_id', 'sis_main_db.address.city_id')
                ->join('sis_main_db.brgy', 'sis_main_db.brgy.brgy_id', 'sis_main_db.address.brgy_id')
                ->join('sis_main_db.prov', 'sis_main_db.prov.province_id', 'sis_main_db.address.province_id')
                ->join('sis_main_db.country', 'sis_main_db.country.country_id', 'sis_main_db.address.country_id')
                ->join('sis_main_db.regions', 'sis_main_db.regions.reg_id', 'sis_main_db.address.reg_id')
                ->join('sis_main_db.stud_per_info', 'sis_main_db.s_main_address.spi_id', 'sis_main_db.stud_per_info.spi_id')
                ->select('sis_main_db.city.city_name','sis_main_db.brgy.brgy_name','sis_main_db.country.country_name',
                        'sis_main_db.regions.country_id','sis_main_db.address.street')
                ->where('sis_main_db.stud_per_info.spi_id', '367')
                ->get();
                
        return $address;
    }



    
    public function educationalAttainment($stud) {
        $ea = DB::table('sis_main_db.stud_sch_info')
                ->join('sis_main_db.stud_per_info', 'sis_main_db.stud_per_info.spi_id')
                ->join('sis_main_db.stud', '')
                ->where('sis_main_db.stud_per_info.spi_id', 'sis_main_db.stud_sch_info.spi_id')
                ->where('sis_main_db.stud_per_info.spi_id', $stud)
                ->get();
    }





    ////////////////////////////////////// UTILITIES ///////////////////////////////////////////////


    
}




