<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Skills extends Model
{
    
    protected $fillable = [
        'name'
    ];

    protected $hidden = [
         'remember_token',
    ];



}
