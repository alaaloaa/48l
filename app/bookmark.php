<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class bookmark extends Model
{
    protected $fillable = [
       'status', 'user_id', 'job_id'
    ];

}
