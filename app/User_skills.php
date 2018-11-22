<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class User_skills extends Model
{
   protected $fillable = [
        'skill_id', 'user_id'
    ];

    protected $hidden = [
        'password', 'remember_token',
    ];


}
