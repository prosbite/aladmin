<?php

function formatBirth($date, $format){
    return date($format, strtotime($date));    
}

function formatDate($date, $format){
    return date($format, strtotime($date));    
}

function calculateAge($bday){
   $diff = date_diff(date_create($bday), date_create(date('y-m-d')));
   return $diff->format('%y');
}

function pickEm($arr, $indexes){
    $result = [];
    foreach($arr as $index=>$value){
        if(in_array($index, $indexes)){
            $result[$index] = $value;
        }
    }
    return $result;
}