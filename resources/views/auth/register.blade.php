@extends('layouts.app')

@section('content')

 <style type="text/css">
    .target-holder{
        background:#fff;
        box-shadow:1px 1px 3px rgba(128,128,128,0.4);
        padding: 30px 15px;
    }
    .co-success{
        color: #5cb85c
    }
    .mt-20{
        margin-top:20px;
    }
</style>

<div class="container-fluid" style="margin-top: 67px;">
    <div class="row">
        <div class="col-xs-12">
            <div class="target-holder">
                <h4 class="text-center"><b>Create New User</b></h4>
 
                <form class="mt-20" method="POST" action="{{ route('register') }}"  enctype="multipart/form-data">
                      {{ csrf_field() }}
                    <div class="form-group{{ $errors->has('first_name') ? ' has-error' : '' }}">
                        <label for="first_name">First Name</label>
                        <input type="text" class="form-control" value="{{ old('first_name') }}" id="first_name" name="first_name" placeholder="Enter the user first name">
                        @if ($errors->has('first_name'))
                            <span class="help-block">
                                <strong>{{ $errors->first('first_name') }}</strong>
                            </span>
                        @endif
                    </div> 
                    <div class="form-group{{ $errors->has('last_name') ? ' has-error' : '' }}">
                        <label for="first_name">Last Name</label>
                        <input type="text" class="form-control" value="{{ old('last_name') }}" id="last_name" name="last_name" placeholder="Enter the user last name">
                         @if ($errors->has('last_name'))
                            <span class="help-block">
                                <strong>{{ $errors->first('last_name') }}</strong>
                            </span>
                        @endif
                    </div>

                    <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" value="{{ old('email') }}" id="email" name="email" placeholder="Enter the user email">
                         @if ($errors->has('email'))
                            <span class="help-block">
                                <strong>{{ $errors->first('email') }}</strong>
                            </span>
                        @endif
                    </div>
                    <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Enter the user password">
                         @if ($errors->has('password'))
                            <span class="help-block">
                                <strong>{{ $errors->first('password') }}</strong>
                            </span>
                        @endif
                    </div>
                    <div class="form-group{{ $errors->has('phone') ? ' has-error' : '' }}">
                        <label for="phone">Phone</label>
                        <input type="phone" class="form-control" value="{{ old('phone') }}" id="phone" name="phone" placeholder="Enter the user phone">
                         @if ($errors->has('phone'))
                            <span class="help-block">
                                <strong>{{ $errors->first('phone') }}</strong>
                            </span>
                        @endif
                    </div>
                    <div class="form-group{{ $errors->has('country') ? ' has-error' : '' }}">
                        <label for="country">Location</label>
                        <select class="form-control" name="country" value="{{ old('country') }}" id="country">
                            <option disabled selected>Please Select User Location</option>
                            @foreach($countries as $country) 
                            <option value="{{$country->name}}">{{$country->name}}</option>
                            @endforeach
                        </select>
                         @if ($errors->has('country'))
                            <span class="help-block">
                                <strong>{{ $errors->first('country') }}</strong>
                            </span>
                        @endif
                    </div>
                    <div class="form-group{{ $errors->has('role') ? ' has-error' : '' }}">
                        <label for="role">Role</label>
                        <select class="form-control" value="{{ old('role') }}" name="role" id="role">
                            <option disabled selected>Please Select User Role</option>
                            <option value="user">User</option>
                            <option value="employer">Employer</option>
                        </select>
                         @if ($errors->has('role'))
                            <span class="help-block">
                                <strong>{{ $errors->first('role') }}</strong>
                            </span>
                        @endif
                    </div>
                    <div class="form-group">
                        <input type="radio" value="male" id="male" name="gender" checked>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="gender" value="female" style="margin-left: 30px">
                        <label for="female">Female</label>
                    </div>

                    <div class="form-group" style="padding:15px 0;">
                        <button class="btn btn-primary pull-right">Create</button>
                    </div>
                </form>


            </div>
        </div>
    </div>
</div>

@endsection
