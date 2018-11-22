@extends('layouts.app')

@section('content') 
 <div class="container m-t-65 recrutier">
            <div class="row">
                @if(session()->has('msg'))
                    <div class="alert alert-success col-xs-4 col-xs-offset-4 text-center">
                        {!! session()->get('msg') !!}
                    </div>
                @endif 
                <div class="col-xs-12">
                    <div class="sub sub-l sub-xs-t">

                        <div class="row">
                            <div class="col-md-6 col-md-offset-3">
                            
                                <h3 style="margin-bottom: 25px; text-align: center;">Create new Job</h3>

                                <form method="POST" action="{{ route('job/process') }}" enctype="multipart/form-data">
                                    
                                {{ csrf_field() }}

                                <input type="hidden" value="{{Auth::id()}}" name="id">

                                <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                                    <label for="name">Job Name</label>
                                    <input type="text"  class="form-control" value="{{ old('name') }}" id="name" name="name" placeholder="Job Name">
                                    @if ($errors->has('title'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('title') }}</strong>
                                        </span>
                                    @endif
                                </div>
                                <div class="form-group{{ $errors->has('title') ? ' has-error' : '' }}">
                                    <label for="title">Job Title</label>
                                    <input type="text"  class="form-control" value="{{ old('title') }}" id="title" name="title" placeholder="Job Title">
                                     @if ($errors->has('title'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('title') }}</strong>
                                        </span>
                                    @endif
                                </div>

                                <div class="form-group{{ $errors->has('description') ? ' has-error' : '' }}">
                                    <label for="description">Job Description</label>
                                    <textarea  class="form-control" type="textarea" id="description" placeholder="Job Description ... " maxlength="140" name="description" rows="7">{{ old('description') }}</textarea>
                                     @if ($errors->has('description'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('description') }}</strong>
                                        </span>
                                    @endif
                                    <span class="help-block"><p id="characterLeft" class="help-block ">You have reached the limit</p></span>                    
                                </div>

                                <div class="form-group{{ $errors->has('country') ? ' has-error' : '' }}">
                                    <label for="country">Job Country</label>
                                    <select  class="form-control" value="{{ old('country') }}" id="country" name="country">
                                        <option disabled {{ old('country') ? '' : 'selected' }}>Please select job country</option>
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


                                 <div class="form-group{{ $errors->has('address') ? ' has-error' : '' }}">
                                    <label for="address">Job Address</label>
                                    <input type="text"  class="form-control" value="{{ old('address') }}" id="address" name="address" placeholder="Job Address">
                                    @if ($errors->has('address'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('address') }}</strong>
                                        </span>
                                    @endif
                                </div>

                                <div class="form-group{{ $errors->has('experience') ? ' has-error' : '' }}">
                                    <label for="">Experience</label>
                                    <select  class="form-control" value="{{ old('experience') }}" id="" name="experience">
                                       <option disabled {{ old('experience') ? '' : 'selected' }}>Please select the experience</option>
                                       <option value="0-1">0-1</option>
                                       <option value="1-2">1-2</option>
                                       <option value="2-5">2-5</option>
                                       <option value="2-7">2-7</option>
                                       <option value="3-8">3-8</option>
                                       <option value="5-8">5-8</option>
                                       <option value="5-10">5-10</option>
                                    </select>
                                    @if ($errors->has('experience'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('experience') }}</strong>
                                        </span>
                                    @endif     
                                </div>

                               
                                <div class="form-group{{ $errors->has('education') ? ' has-error' : '' }}">
                                    <label for="education">education</label>
                                    <input type="text"  class="form-control" value="{{ old('education') }}" id="education" name="education" placeholder="what is the education that you need..">
                                    @if ($errors->has('education'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('education') }}</strong>
                                        </span>
                                    @endif
                                </div>

                                <div class="form-group{{ $errors->has('skills') ? ' has-error' : '' }}">
                                    <label for="skills">Job Skills</label>
                                    <select  class="form-control selectpicker" value="{{ json_encode(old('skills')) }}" id="skills" name="skills[]" multiple>
                                        @foreach($skills as $skill)
                                        <option value="{{$skill->id}}">{{$skill->name}}</option>   
                                        @endforeach
                                    </select>
                                     @if ($errors->has('skills'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('skills') }}</strong>
                                        </span>
                                    @endif
                                </div>

                                <div class="form-group{{ $errors->has('company_name') ? ' has-error' : '' }}">
                                    <label for="company_name">Company Name</label>
                                    <input type="text"  class="form-control" value="{{ old('company_name') }}" id="company_name" name="company_name" placeholder="Company Name">
                                     @if ($errors->has('company_name'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('company_name') }}</strong>
                                        </span>
                                    @endif
                                </div>

                                <div class="form-group{{ $errors->has('about_company') ? ' has-error' : '' }}">
                                    <label for="about_company">About Company</label>
                                    <input type="text"  class="form-control" value="{{ old('about_company') }}" id="about_company" name="about_company" placeholder="write something about your country">
                                    @if ($errors->has('about_company'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('about_company') }}</strong>
                                        </span>
                                    @endif
                                </div>
  
                                <div class="form-group{{ $errors->has('logo') ? ' has-error' : '' }}">
                                    <label>Company Logo</label>
                                    <input  class="form-control" type="file" name="logo">
                                    @if ($errors->has('logo'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('logo') }}</strong>
                                        </span>
                                    @endif
                                </div>

                                <div class="form-group{{ $errors->has('salary') ? ' has-error' : '' }}">
                                    <label for="salary">Salary In Dollars</label>
                                    <input type="number"  class="form-control" value="{{ old('salary') }}" id="salary" name="salary" placeholder="Salary">
                                     @if ($errors->has('salary'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('salary') }}</strong>
                                        </span>
                                    @endif
                                </div>

                                 <div class="form-group{{ $errors->has('job_type') ? ' has-error' : '' }}">
                                    <label for="">Job Type</label>
                                    <select  class="form-control" value="{{ old('job_type') }}" id="" name="job_type">
                                       <option disabled {{ old('job_type') ? '' : 'selected' }}>Please select the job_type</option>
                                       <option value="full_time">Full Time</option>
                                       <option value="hours">Hours</option>
                                    </select>
                                    @if ($errors->has('job_type'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('job_type') }}</strong>
                                        </span>
                                    @endif     
                                </div>

                                <div class="form-group">
                                    <p><b>Availablitiy</b></p>
                                    <input type="radio" value="1" id="Yes" name="availability" checked>
                                    <label for="Yes">Yes</label>
                                    <input type="radio" id="No" name="availability" value="0" style="margin-left: 30px">
                                    <label for="No">No</label>
                                </div>
                                
                               <button type="submit" id="submit" name="submit" class="btn btn-primary pull-right">Create</button>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
@endsection