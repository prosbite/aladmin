<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class JobApplicant extends Model
{
    protected $primaryKey = 'applicant_id';

    public static function applicantByPost($post_id){
        return DB::table('alumni.job_applicants')
                ->join('sis_main_db.stud_sch_info', 'sis_main_db.stud_sch_info.ssi_id', 'alumni.job_applicants.ssi_id')
                ->join('sis_main_db.stud_per_info', 'sis_main_db.stud_sch_info.spi_id', 'sis_main_db.stud_per_info.spi_id')
                ->join('sis_main_db.stud_prog_taken', 'sis_main_db.stud_sch_info.ssi_id', 'sis_main_db.stud_prog_taken.ssi_id')
                ->join('sis_main_db.stud_stat_list', 'sis_main_db.stud_prog_taken.stat_id', 'sis_main_db.stud_stat_list.stat_id')
                ->join('sis_main_db.program_list', 'sis_main_db.program_list.pl_id', 'sis_main_db.stud_prog_taken.pl_id')
                ->where('sis_main_db.stud_stat_list.stat_name', 'graduate')
                ->where('alumni.job_applicants.post_id', $post_id)
                ->get();
    }
}
