<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Follow;
use App\User;
use Auth;
use View;
class users extends Controller
{

    public function follow($r_id, $follow_id = null) {
        if (empty($follow_id)) {
          $follow        = new Follow;
          $follow->s_id  = Auth('api')->id();
          $follow->r_id  = $r_id;
          $follow->status  = 1;
          $follow->save();
          
          $user = User::find($r_id);
          return 'Now You Follow '. $user->fullName;
        } else {
           Follow::find($follow_id)->delete();
           return 'You Canceled The Followship';
        }
      
    }

         // Apply and Refuse Job
    public function follow_status($follow_id, $r_id, $remove = null) {
      $follow = Follow::find($follow_id);
      if ($follow->status == 0  && $remove == null) {
         $follow->s_id    =  $r_id;
         $follow->r_id    = Auth::id();
         $follow->status  = 1;  
         $follow->save();    
      } else {
          $follow = Follow::find($follow_id)->delete();
      }     
      return redirect()->back();
    }


    public function userData() {
      return Auth('api')->user();
    }

}
