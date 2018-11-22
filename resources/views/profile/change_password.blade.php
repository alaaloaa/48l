@extends('layouts.app')

@section('content')

<br><br><br><br><br>
<div class="container">
    <div class="row"  style="background:#fff">
        <div class="col-xs-8 col-xs-offset-2" >
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <h4 class='text-center'>My Profile</h4>
                            <hr>
                        </div>
                    @if(session()->has('pass'))
                      <div class="alert alert-danger col-xs-4 col-xs-offset-4 text-center">
                        {{session()->get('pass') }}
                      </div>
                    @elseif(session()->has('msg'))
                      <div class="alert alert-success col-xs-4 col-xs-offset-4 text-center">
                        {!! session()->get('msg') !!}
                      </div>
                    @endif
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <form method="POST" action="{{ route('profile/changepasswordprocess')}}" >
                                {{ csrf_field() }}

                              <div class="form-group row{{ $errors->has('password') ? ' has-error' : '' }}">
                                  <label for="password">Current Password</label>
                                  <input type="password" class="form-control" id="password" name="password" placeholder="Enter Current Password">
                                  @if ($errors->has('password'))
                                      <span class="help-block">
                                          <strong>{{ $errors->first('password') }}</strong>
                                      </span>
                                  @endif
                              </div> 
                              <div class="form-group row{{ $errors->has('newpassword') ? ' has-error' : '' }}">
                                  <label for="newpassword">New Password</label>
                                  <input type="password" class="form-control" id="newpassword" name="newpassword" placeholder="Enter New Password">
                                  @if ($errors->has('newpassword'))
                                      <span class="help-block">
                                          <strong>{{ $errors->first('newpassword') }}</strong>
                                      </span>
                                  @endif
                              </div> 
                              <div class="form-group row{{ $errors->has('confirm_password') ? ' has-error' : '' }}">
                                  <label for="confirm_password">Confirm New Password</label>
                                  <input type="password" class="form-control" id="confirm_password" name="confirm_password" placeholder="Enter Confirm Password">
                                  @if ($errors->has('confirm_password'))
                                      <span class="help-block">
                                          <strong>{{ $errors->first('confirm_password') }}</strong>
                                      </span>
                                  @endif
                              </div> 

                              <div class="form-group row">
                                <div class="offset-4 col-8">
                                  <button name="submit" type="submit" class="btn btn-primary">Change Password</button>
                                </div>
                              </div>
                            </form>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>  
    </div>  
</div>




@endsection