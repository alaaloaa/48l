@extends('layouts.app')

@section('content')

<div class="container msg-container">
<h3 class=" text-center"><a href="{{route('profile/view', ['id' => $Ruser->id])}}">{{$Ruser->FullName}}</a></h3>
<div class="messaging">
      <div class="inbox_msg">
        <div class="inbox_people">
          <div class="headind_srch">
            <div class="recent_heading">
              <h4>Recent</h4>
            </div>
            <div class="srch_bar">
              <div class="stylish-input-group">
                <input type="text" class="search-bar"  placeholder="Search" >
                <span class="input-group-addon">
                <button type="button"> <i class="fa fa-search" aria-hidden="true"></i> </button>
                </span> </div>
            </div>
          </div>
          <div class="inbox_chat">
            <div class="chat_list">
              @foreach($users as $user)
                  <?php 
                      $user_id = $user->id;
                      $message = new App\Message;
                      $message   = $message->latest()->where(function ($query) use ($user_id){
                            $query->where('r_id', $user_id)
                                  ->Where('user_id', Auth::id());
                        })->orWhere(function ($query) use($user_id){
                            $query->where('r_id', Auth::id())
                                  ->Where('user_id',  $user_id);
                        })->orderBy('id', 'desc')->first();

                  ?>
                  @if(!empty($message))
                    <a href="{{route('messages/view', ['id' => $user->id])}}">
                      <div class="chat_people">
                        <div class="chat_img"><img src="{{$user->avatar}}" alt="sunil" height='40px' width="40px"> </div>
                        <div class="chat_ib">
                          <h5>{{$user->FullName}}<span class="chat_date">Dec 25</span></h5>
                          <p>{{$message->msg}}</p>
                        </div>
                      </div>
                    </a>
                  @endif
               
              @endforeach
            </div>
          </div>
        </div>

                                           <!-- messages -->
        <div class="mesgs">
          <div class="msg_history">
            @foreach($msgs as $msg)
              @if($msg->user_id !== Auth::id())
                <div class="incoming_msg">
                  <div class="incoming_msg_img">
                    <div style="background: url({{$Ruser->avatar}})" alt="sunil"></div>
                  </div>
                  <div class="received_msg">
                    <div class="received_withd_msg">
                      <p>{{$msg->msg}}</p>
                      <span class="time_date"> 11:01 AM    |    June 9</span></div>
                  </div>
                </div>
              @else
                <div class="outgoing_msg">
                  <div class="incoming_msg_img pull-right" style='margin-left:15px'><img src="{{Auth::user()->avatar}}" alt="sunil"> </div>
                  <div class="sent_msg">
                    <p class='msg'>{{$msg->msg}}</p>
                    <span class="time_date"> 11:01 AM    |    June 9</span> 
                  </div>
                </div>
              @endif
            @endforeach
          </div>
                                 <!-- send message -->
          <form action="{{route('messages/send', ['r_id' => $id])}}">
            <div class="type_msg">
              <div class="input_msg_write">
                  <div class="form-group">
                     <textarea  class="form-control" type="textarea" id="description" name="msg" rows="3"></textarea>
                  </div>
                <button class="msg_send_btn" type="submit"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
              </div>
            </div>
          </form>

        </div>
      </div>      
    </div>
</div>


@endsection