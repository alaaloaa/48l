@extends('layouts.app')

@section('content')
        <div class="container m-t-65 recrutier">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3 col-sm-push-8 col-md-push-9">
                    <div class="sub sub-l sub-xs-t">
                        <h5 class="posted">job posted by : <a href="{{route('profile/view', ['id' => $job->user->id])}}">{{$job->user->first_name}} {{$job->user->last_name}}</a></h5>
                        <div class="row">
                            <div class="col-xs-3 col-sm-6 col-md-5">
                                <img src="{{$job->user->avatar}}" alt="recruiter profile" class="img-responsive">
                            </div>
                            <div class="col-xs-9 col-sm-6 col-md-7 p-l-no">
                                <p><b>Job:</b><a href="#"><b> {{$job->user->job}}</b></a></p>
                                <p><b>About:</b> {{$job->user->about}}</p>
                                <p><span class="fa fa-map-marker" style="width:15px"></span>{{$job->user->country}}</p>
                            </div>
                            <div class="col-xs-12 m-t-20">
                                @if(!isset($follow))
                                   <a href="{{ route('user/follow', ['r_id' => $job->user->id])}}" class="btn btn-default">Follow</a>
                                @else  
                                   @if($follow->status == 0) 
                                      <a disabled class="btn btn-default" data-toggle="popover" data-content='
                                        <a href="{{ route("user/follow_status", ["follow_id" => $follow->id, "r_id" =>   $job->user->id, "remove" => "remove"])}}">Cancel Request</a>
                                        '>
                                   Wait For Accept </a>
                                   @elseif($follow->status == 1)
                                      <a href="{{ route('user/follow_status', ['follow_id' => $follow->id, 'r_id' => $job->user->id, 'remove' => 'remove'])}}" class="btn btn-success">UnFollow</a>
                                   @endif
                                @endif   
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-8 col-md-9 col-sm-pull-4 col-md-pull-3">
                    <div class="sub sub-f sub-xs-t job-description">
                        @if($job->availability == 0)
                           <div class="alert alert-info">
                              <b>This Job is no longer available.</b>
                           </div>
                        @endif  

                        <h3 class="job-name">
                            <span>Recruitment Coordinator</span>
                            <span class="pull-right date" >Posted on July 31, 2017</span>
                        </h3>

                        <h6>
                            <a href="#">Talent Asset Software and Consulting.</a>
                        </h6>
                        
                        @if(Auth::guest())
                            <button class="btn btn-primary">Login To Apply</button>
                            <button class="btn btn-primary">Signup To Apply</button>
                        @else
                            @if(!isset($apply))                            
                                <a href="{{ route('job/apply', ['id' => $job->id])}}" class='btn btn-success'>Apply</a>
                            @else
                            <button class="btn btn-success disabled">You Applied Successfully!</button>
                            @endif

                            @if(empty($bookmark))
                                <a href="{{ route('job/bookmark', ['job_id' => $job->id, 'book_id' => !empty($bookmark->id) ? $bookmark->id : '' ])}}" class='btn btn-success pull-right'>Bookmark</a>
                            @else  
                              @if($bookmark->status == 0) 
                                <a href="{{ route('job/bookmark', ['job_id' => $job->id, 'book_id' => $bookmark->id ])}}" class='btn btn-success pull-right'>Bookmark</a><br>
                              @else
                                <a href="{{ route('job/bookmark', ['job_id' => $job->id, 'book_id' => $bookmark->id ])}}" class='btn btn-primary pull-right'>UnBookmark</a><br>
                              @endif 
                            @endif 
                            <p class='pull-right'>{{empty($bookmark) || $job->bookmarks_count == 0 ? '' : $job->bookmarks_count}}</p>
                        @endif 
                        <hr>
                        <div class="details row">
                            <div class="col-xs-6">
                                <p>
                                    <span class="fa fa-calendar"></span>
                                    {{$job->experience}}
                                </p>
                                <p>
                                    <span class="fa fa-map-marker"></span>
                                    {{$job->country}}
                                </p>
                                <p>
                                    <span class="fa fa-graduation-cap"></span>
                                    {{$job->education}}
                                </p>
                            </div>
                            <div class="col-xs-6">
                                <p><span class="fa fa-money"></span>{{$job->salary}}$</p>
                                <p><span class="fa fa-file"></span>{{$job->job_type}}</p>
                            </div>
                        </div>
                        <hr>
                        <h5 class="title">Job Desciption :</h5>
                        <p class="description">
                           {!!$job->description!!}
                        </p>
                        <hr>
                        <h5 class="title">Skills :</h5>
                        <div class="keywords">
                              @foreach($job->skills as $skill)
                                <a href="#">{{$skill->name}}</a> 
                              @endforeach
                        </div>
                    </div>
                    <div class="sub sub-f sub-xs-t job-description">
                        <h5 class="title">similar jobs</h5>
                             @if(!empty($similars)) 
                                 @foreach($similars as $similar)
                                  <a style='margin:8px;display: inline-block;' href="{{ route('job/view', ['id' => $similar->id]) }}"><b>{{$similar->name}}</b></a>
                                 @endforeach
                             @endif
                    </div>
                </div>
            </div>
        </div>

@endsection



