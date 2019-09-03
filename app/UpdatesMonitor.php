<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class UpdatesMonitor extends Model
{
    protected $primaryKey = 'update_id';

    public function studentUpdates(){
        return DB::table('alumni.updates_monitors')
                    ->join('sis_main_db.stud_sch_info', 'sis_main_db.stud_sch_info.ssi_id', 'alumni.updates_monitors.ssi_id')
                    ->join('sis_main_db.stud_per_info', 'sis_main_db.stud_sch_info.spi_id', 'sis_main_db.stud_per_info.spi_id')
                    ->join('sis_main_db.stud_prog_taken', 'sis_main_db.stud_sch_info.ssi_id', 'sis_main_db.stud_prog_taken.ssi_id')
                    ->join('sis_main_db.program_list', 'sis_main_db.program_list.pl_id', 'sis_main_db.stud_prog_taken.pl_id')
                    ->groupBy('alumni.updates_monitors.ssi_id')
                    ->orderBy('alumni.updates_monitors.created_at', 'DESC')
                    ->get();
    }
}
