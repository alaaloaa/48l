@extends('layouts.app')

@section('content')

@if(Auth::user()->role == 'user')
        <div class="container-fluid" style="margin-top: 67px;">
            <div class="row">
                <div class="col-xs-12">
                    <div class="target-holder">
                        <h4 class='text-center'>
                            <span class="fa fa-users"></span>
                            <b>
                              
                             @foreach ($apply as $app) 
                               {{$app->job->name}}
                             @endforeach
                             </b>
                        </h4>

                        <div class="table-responsive mt-20">
                            <table class="table table-condensed table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>User Name</th>
                                        <th>status</th>                                       
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($apply as $app) 
                                        <tr>
                                            <td>{{$app->id}}</td>                                        
                                            <td><a href="{{route('profile/view', ['id' => $app->user->id])}}">{{$app->user->first_name}} {{$app->user->last_name}}</a></td>                                        
                                            <td>
                                                @if($app->status == 1)
                                                  <a href="{{ route('apply/accept', ['id' => $app->id,'job_id' => $app->job->id, 'user_id' => $app->user->id])}}" class='btn btn-success'>
                                                    <b><i class="fa fa-thumbs-up"></i></b>
                                                  </a>
                                                @else
                                                  <a href="{{ route('apply_status', ['id' => $app->id, 'job_id' => $app->job->id, 'user_id' => $app->user->id])}}" class='btn btn-danger'>
                                                    <b><span class="fa fa-thumbs-down"></span></b>
                                                  </a>
                                                @endif
                                            </td>                                       
                                        </tr>
                                    @endforeach  
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
@endif

@endsection