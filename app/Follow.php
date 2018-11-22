<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Follow extends Model
{
     protected $fillable = [
       'status', 'r_id', 's_id'
    ];


    public function users()
    {
        return $this->belongsTo('App\User', 's_id');
    }

}
