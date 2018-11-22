<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Message;
use App\User;
use Auth;
class messages extends Controller
{
    public function view($id) {
        $msgs = Message::where(function ($query) use ($id){
						    $query->where('r_id', $id)
						          ->Where('user_id', Auth('api')->id());
						})->orWhere(function ($query) use($id){
						    $query->where('r_id', Auth('api')->id())
						          ->Where('user_id',  $id);
						})->get();	
 
        $Ruser     = User::find($id); 
        $users     = User::get();
        return compact('id', 'msgs', 'Ruser', 'users');
    }

    public function send(Request $request, $r_id) {
       $msg = new Message;
       $msg->msg     = $request->msg;
       $msg->r_id    = $r_id;
       $msg->user_id = Auth('api')->id();
       $msg->read    = 0;
       $msg->save();

       $user = User::find($r_id);
      //$user->notify(new messages($user));
       return 'You Sent Message Successfuly';
    }

}


// $data = Auth::user()->messages;

// $users = User::all();

// foreach($users as $user) {
//   $user->messages = Message::where([['receiver_id', $user->id], ['sender_id', Auth::id()]])->orWhere([['receiver_id', Auth::id()], ['sender_id', $user->id]])->get();

//   $latest = $user->messages->latest();
//   if ($latest) {
//     $user->last_msg_date = $latest->created_at;
//     $user->last_msg = $latest;
//   } else {
//     $user->last_msg_date = null;
//   }
// }

// $users = $users->sortByDesc('last_msg_date');
