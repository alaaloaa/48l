<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Job_skills extends Model
{
    protected $fillable = [
       'skills_id', 'job_id'
    ];

    protected $hidden = [
         'remember_token',
    ];

}
