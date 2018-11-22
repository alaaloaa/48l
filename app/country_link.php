<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Country_link extends Model
{
    protected $fillable = [
        'country_id', 'user_id', 'job_id'
    ];

    protected $hidden = [
         'remember_token',
    ];

}
