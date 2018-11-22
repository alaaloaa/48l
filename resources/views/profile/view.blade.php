@extends('layouts.app')

@section('content')

<br><br><br><br><br>

<div class="container">
  <div class="row">
   
    <div class="col-xs-10 col-xs-offset-1  profile-view">
      @if($user->id != Auth::id())
        <a href="{{route('messages/view', ['id' => $user->id])}}" class='btn btn-info pull-right'>Send Message</a>
      @endif
      <div class="col-sm-3 pic">
          @if(session()->has('msg'))
            <div class="alert alert-success text-center">
              {!! session()->get('msg') !!}
            </div>
          @endif
         <div class='img'>
           <div style='background:url({{$user->avatar}})'></div>
         </div>
         @if($user->id == Auth::id())
         <form action="{{route('profile/updatepic', ['id' => Auth::id()])}}" method='post'  enctype="multipart/form-data">
            {{ csrf_field() }}
            <div class="fileUpload btn btn-primary">
                <span>Upload</span>
                <input type="file" class="upload" name='avatar'/>
            </div>
                <input type="submit" name='upload' value='Save'/>
         </form>
         @if ($errors->has('logo'))
            <span class="help-block">
                <strong>{{ $errors->first('avatar') }}</strong>
            </span>
        @endif
        @endif
         <h2><a href="#">{{$user->FullName}}</a></h2>
      </div>  
      <div class="col-sm-9">
        <div class='txt'>
           <div class="col-sm-3 col-xs-4 head" >
                Name
           </div>
           <div class="col-sm-9 col-xs-8 prag">
             {{$user->first_name}} {{$user->last_name}}
           </div>
        </div>
        <div class='txt'>
           <div class="col-sm-3 col-xs-4 head" >
                Email
           </div>
           <div class="col-sm-9 col-xs-8 prag">
               {{$user->email}}
           </div>
        </div>
        <div class='txt'>
           <div class="col-sm-3 col-xs-4 head" >
              Phone
           </div>
           <div class="col-sm-9 col-xs-8 prag">
              {{$user->phone}}
           </div>
        </div>
        <div class='txt'>
           <div class="col-sm-3 col-xs-4 head" >
                Country
           </div>
           <div class="col-sm-9 col-xs-8 prag">
                           
           </div>
        </div>
        <div class='txt'>
           <div class="col-sm-3 col-xs-4 head" >
                Job
           </div>
           <div class="col-sm-9 col-xs-8 prag">
               {{$user->job}}
           </div>
        </div>
        <div class='txt'>
           <div class="col-sm-3 col-xs-4 head" >
                About
           </div>
           <div class="col-sm-9 col-xs-8 prag">
             {{$user->about}}
           </div>
        </div>
        <div class='txt'>
           <div class="col-sm-3 col-xs-4 head" >
                Gender
           </div>
           <div class="col-sm-9 col-xs-8 prag">
             {{$user->gender}}
           </div>
        </div>
        <div class='txt'>
           <div class="col-sm-3 col-xs-4 head" >
                Register Date
           </div>
           <div class="col-sm-9 col-xs-8 prag">
             {{$user->created_at}}
           </div>
        </div>

        <div class='txt'>
           <div class="col-xs-6" >
                <a href="{{route('profile/view/jobs')}}" class='btn btn-success btn-block'>My Jobs</a>
           </div>
           @if($user->id == Auth::id())
           <div class="col-xs-6">
                <a href="{{route('profile/edit')}}" class='btn btn-primary btn-block'>Edit Profile</a>
           </div>
           @endif
        </div>

      </div> 
    </div> 
  </div>  
</div> 


@endsection