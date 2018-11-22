@extends('layouts.app')

@section('content')

 <div class="container" style="padding-top: 30px">    
            <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
                <div class="panel panel-info" >
                        <div style="padding-top:30px" class="panel-body" >
                            <div>
                                 @if ($errors->any())
                                    @foreach($errors->all() as $error)
                                        <ul> 
                                            <li class="alert alert-danger">{{$error}}</li>
                                        </ul>
                                    @endforeach
                                @endif                            
                            </div>    
                                                        
                            <form id="loginform" class="form-horizontal" method="POST" action="{{ route('login') }}" role="form">
                               {{ csrf_field() }}
                                        
                                <div style="margin-bottom: 25px" class="input-group {{ $errors->has('email') ? ' has-error' : '' }}">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input id="login-username" type="text" class="form-control" name="email" value="" placeholder="username or email">                                        
                                </div>
                                    
                                <div style="margin-bottom: 25px" class="input-group {{ $errors->has('password') ? ' has-error' : '' }}">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                    <input id="login-password" type="password" class="form-control" name="password" placeholder="password">
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> Remember Me
                                            </label>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <button type="submit" class="btn btn-primary">
                                            Login
                                        </button>

                                        <a class="btn btn-link" href="{{ route('password.request') }}">
                                            Forgot Your Password?
                                        </a>
                                    </div>
                                </div>
                            </form>     
                        </div>                     
                    </div>  
            </div>
        </div>

@endsection
