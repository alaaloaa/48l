@extends('layouts.app')

@section('content') 

<div class="container m-t-65 recrutier">
    <div class="row search-jobs">
        <div class="col-xs-12 col-sm-4 col-md-3">
            <div class="sub sub-f sub-xs-t all p-t-15">
                <h4 class="posted m-b-15">search jobs :</h4>
                <hr>
                 <form method="get" style='margin-bottom:50px' class='form-search' action="{{ route('job/search', ['name' => 'all']) }}">                          
                        <div class="form-group">
                            <label for="name">Country</label>
                             <select  class="form-control selectpicker" id="country" name="country[]" multiple data-max-options="5">
                                @foreach($countries as $country) 
                                   <option value="{{$country->name}}">{{$country->name}}</option>
                                @endforeach
                            </select>     
                        </div>
                        <div class="form-group">
                            <label for="name">Experience</label>
                             <select  class="form-control selectpicker" id="country" name="experience[]" multiple data-max-options="5">
                               <option value="0-1">0-1</option>
                               <option value="1-2">1-2</option>
                               <option value="2-5">2-5</option>
                               <option value="2-7">2-7</option>
                               <option value="3-8">3-8</option>
                               <option value="5-8">5-8</option>
                               <option value="5-10">5-10</option>
                            </select>     
                        </div>
                       <button type="submit" id="submit" class="btn btn-primary pull-right">Search</button>
                   </form>

            </div>
        </div>

        <div class="col-xs-12 col-sm-8 col-md-9">
            <div class="row">
                <div class="col-xs-12">
                    <div class="sub sub-l sub-xs-t job-description" style="overflow: hidden;">
                        <ul class="pagination pull-right">
                             @if( count($jobs) >= 10 )
                                  {{ $jobs->links() }}
                             @endif  
                        </ul>
                    </div>
                </div>
                
                @foreach($jobs as $job) 
                        <div class="col-xs-12 job-holder">
                            <div class="row">
                                <div class="sub">                            
                                    <div class="image">
                                        <img src="/images/jobs/Nile-Multimedia-Egypt-4085-sm.png" class="img img-circle">
                                    </div>
                                    <div class="content">
                                           
                                        <div class="details">
                                            <a href="{{ route('job/view', ['id' => $job->id]) }}"><b>{{ $job->name }}</b></a>
                                            <span class="work-type label label-success"><a style='color:#fff' class="company" href="{{route('job/search', ['name' => 'job_type', 'q' => $job->job_type])}}">{{$job->job_type}}</a></span>
                                            <span class="date" >Posted on {{$job->created_at}}</span>
                                            <p class="title">{{$job->title}}</p>
                                            <p class="address">
                                                <a class="company" href="{{route('job/search', ['name' => 'company', 'q' => $job->company_name])}}">{{$job->company_name}}</a>{{$job->location}}
                                                </p>
                                            <p>
                                                {{$job->description}}
                                            </p>
                                            <div class="skills">
                                               @foreach($job->skills as $skill)
                                                <a class="company" href="{{route('job/search', ['name' => 'skills', 'q' => $skill->name])}}">{{$skill->name}}</a>                                       @endforeach    
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                @endforeach
                @if($jobs->isEmpty())
                <center>
                   <h1 class='msg-noresult col-xs-6 col-xs-offset-3 alert alert-info'>There is no ant result matches</h1>
                </center>
                @endif
            </div>

        </div>
    </div>
</div>


@endsection