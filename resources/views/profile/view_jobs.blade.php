@extends('layouts.app')

@section('content')

@if(Auth::user()->role == 'user')
        <div class="container-fluid" style="margin-top: 67px;">
            <div class="row">
                <div class="col-xs-12">
                    <div class="target-holder">
                        <h4>
                            <span class="fa fa-users"></span>
                            <b>Jobs</b>
                            <a style="margin-left:15px;" class="btn btn-success" href="{{ route('job/create') }}"><span class="fa fa-user-plus"></span>New Job</a>
                        </h4>

                        <div class="table-responsive mt-20">
                            <ul class="pagination pagination-sm pull-right">
                                {{$jobs->links()}}
                            </ul>
                            <table class="table table-condensed table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>JobName</th>
                                        <th>Description</th>
                                        <th>Location</th>
                                        <th>Experience</th>
                                        <th>CompanyName</th>
                                        <th>Salary</th>
                                        <th>Apply</th>
                                        <th>Availability</th>
                                        <th>Options</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($jobs as $job)
                                    <tr>
                                        <td>{{$job->id}}</td>
                                        <td>{{$job->name}}</td>
                                        <td>{!!$job->description!!}</td>
                                        <td>{{$job->country}}</td>
                                        <td>{{$job->experience}}</td>
                                        <td>{{$job->company_name}}</td>
                                        <td>{{$job->salary}}</td>
                                                                              
                                        <td>
                                            @if($job->apply_count > 0)                                      
                                              <a href="{{route('profile/view/applyments', ['id' => $job->id])}}">{{$job->apply_count}}
                                              </a>
                                            @else
                                             {{0}}
                                            @endif
                                        </td>
                                        <td>
                                            @if($job->availability == 1)
                                              <a href="{{route('job/unavailable', ['id' => $job->id])}}"class='btn btn-success'>
                                                <b><i class="fa fa-thumbs-up"></i></b>
                                              </a>
                                            @else
                                              <a href="{{route('job/available', ['id' => $job->id])}}" class='btn btn-danger'>
                                                <b><span class="fa fa-thumbs-down"></span></b>
                                              </a>
                                            @endif
                                        </td>
                                        <td>
                                            <span class="fa fa-check-circle co-success"></span>
                                            <span class="fa fa-exclamation-circle"></span>
                                        </td>
                                        <td>12-08-2017</td>
                                        <td class="text-center">
                                            <a href="#"><span class="fa fa-pencil-square-o"></span></a>
                                            <a href="#" class="co-success"><span class="fa fa-eye"></span></a>
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