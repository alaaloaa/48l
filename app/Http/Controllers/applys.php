<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class applys extends Controller
{ 

    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function accept_job(Request $request, $id, $job_id ,$user_id) {
      $app   =  Apply::find($id);
      $apply->status  = 1;
      $apply->user_id = $user_id;
      $apply->job_id  = $job_id;
      $apply->save();
      return redirect()->back();
    }
    public function refuse_job(Request $request, $id, $job_id ,$user_id) {
      $app   =  Apply::find($id); 
      $apply->status  = 0;
      $apply->user_id = $request->user_id;
      $apply->job_id  = $request->job_id;
      $apply->save();
      return redirect()->back();
    }
}
