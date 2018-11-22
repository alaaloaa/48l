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
                    @if(session()->has('conpass'))
                      <div class="alert alert-danger col-xs-4 col-xs-offset-4 text-center">
                        {{session()->get('conpass') }}
                      </div>
                    @elseif(session()->has('msg'))
                      <div class="alert alert-success col-xs-4 col-xs-offset-4 text-center">
                        {!! session()->get('msg') !!}
                      </div>
                    @endif
		            </div>
		            <div class="row">
		                <div class="col-md-12">
		                    <form method="POST" action="{{ route('profile/update', ['id' => Auth::id()]) }}" >
                                {{ csrf_field() }}
                              <div class="form-group row{{ $errors->has('first_name') ? ' has-error' : '' }}">
                                  <label for="first_name">First Name</label>
                                  <input type="text" class="form-control" value="{{ old('first_name') ? old('first_name') : Auth::user()->first_name }}" id="first_name" name="first_name" placeholder="Enter the user first name">
                                  @if ($errors->has('first_name'))
                                      <span class="help-block">
                                          <strong>{{ $errors->first('first_name') }}</strong>
                                      </span>
                                  @endif
                              </div> 
                              <div class="form-group row{{ $errors->has('last_name') ? ' has-error' : '' }}">
                                  <label for="first_name">Last Name</label>
                                  <input type="text" class="form-control" value="{{ old('last_name') ? old('last_name') : Auth::user()->last_name }}" id="last_name" name="last_name" placeholder="Enter the user last name">
                                   @if ($errors->has('last_name'))
                                      <span class="help-block">
                                          <strong>{{ $errors->first('last_name') }}</strong>
                                      </span>
                                  @endif
                              </div>
                              <div class="form-group row {{ $errors->has('email') ? ' has-error' : '' }}">
                                  <label for="email">Email</label>
                                  <input type="email" class="form-control" value="{{ old('email') ? old('email') : Auth::user()->email }}" id="email" name="email" placeholder="Enter the user email">
                                   @if ($errors->has('email'))
                                      <span class="help-block">
                                          <strong>{{ $errors->first('email') }}</strong>
                                      </span>
                                  @endif
                              </div>
                             
                              <div class="form-group row {{ $errors->has('phone') ? ' has-error' : '' }}">
                                  <label for="phone">Phone</label>
                                  <input type="phone" class="form-control" value="{{ old('phone') ? old('phone') : Auth::user()->phone }}" id="phone" name="phone" placeholder="Enter the user phone">
                                   @if ($errors->has('phone'))
                                      <span class="help-block">
                                          <strong>{{ $errors->first('phone') }}</strong>
                                      </span>
                                  @endif
                              </div>
                              <div class="form-group row {{ $errors->has('country') ? ' has-error' : '' }}">
                                  <label for="country">Location</label>
                                  <select class="form-control" name="country" value="{{ old('country') ? old('country') : Auth::user()->country }}" id="country">
                                      @foreach($countries as $country) 
                                      <option value="{{$country->id}}">{{$country->name}}</option>
                                      @endforeach
                                  </select>
                                   @if ($errors->has('country'))
                                      <span class="help-block">
                                          <strong>{{ $errors->first('country') }}</strong>
                                      </span>
                                  @endif
                              </div>
                              <div class="form-group row{{ $errors->has('job') ? ' has-error' : '' }}">
                                  <label for="job">Job</label>
                                  <input type="text" class="form-control" value="{{ old('job') ? old('job') : Auth::user()->job }}" id="job" name="job" placeholder="Write Your Job">
                                  @if ($errors->has('job'))
                                      <span class="help-block">
                                          <strong>{{ $errors->first('job') }}</strong>
                                      </span>
                                  @endif
                              </div>
                              <div class="form-group row">
                                  <label for="skills">Your Skills</label>
                                  <select  class="form-control selectpicker" value="{{ old('skills') }}" id="skills" name="skills[]" multiple>
                                      @foreach($skills as $skill)
                                      <option value="{{$skill->id}}">{{$skill->name}}</option>   
                                      @endforeach
                                  </select>
                              </div>

                              <div class="form-group row">
                                <label for="publicinfo" class="col-4 col-form-label">Public Info</label> 
                                <div class="col-8">
                                  <textarea id="publicinfo" name="about" cols="40" rows="4" class="form-control">{{ old('about') ? old('about') : Auth::user()->about }}</textarea>
                                </div>
                              </div>
                              <div class="form-group row">
                                  <p><b>Gender</b></p>
                                  <input type="radio" value="male" id="male" name="gender" {{ Auth::user()->gender == 'male' ? 'checked' : '' }}>
                                  <label for="male">Male</label>
                                  <input type="radio" id="female" name="gender" value="female" style="margin-left: 30px"{{ Auth::user()->gender == 'female' ? 'checked' : '' }}>
                                  <label for="female">Female</label>
                              </div>
                              <div class="form-group row {{session()->has('conpass') ? ' has-error' : '' }}">
                                <label for="confirm_password" class="col-4 col-form-label">Confirm Password</label> 
                                <div class="col-8">
                                  <input id="confirm_password" name="confirm_password" placeholder="Confirm Password" class="form-control here" type="text">
                                </div>
                              </div>  
                              <div class="form-group row">
                                <div class="offset-4 col-8">
                                  <button name="submit" type="submit" class="btn btn-primary">Update My Profile</button>
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