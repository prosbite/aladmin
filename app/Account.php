<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Account extends Model
{
    protected $primaryKey = 'account_id';

    protected $hidden = [
        'password'
    ];
}
