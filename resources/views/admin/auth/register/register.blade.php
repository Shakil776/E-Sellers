@extends('admin.master')

@section('title')
    Add Admin
@endsection

@section('body')

    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            @if(Session::get('message'))
                <div id="msg" class="alert alert-success left-icon-alert" role="alert">
                    <strong>Well done! &nbsp;</strong>{{ Session::get('message') }}
                </div>
            @endif
            <div class="panel panel-default" style="margin-top: 10%;">
                <div class="panel-heading">
                    <h3 class="panel-title">Registration</h3>
                </div>
                <div class="panel-body">
                    <form method="POST" action="{{ route('admin-register') }}" enctype="multipart/form-data">
                        @csrf
                        <fieldset>
                            <div class="form-group">
                                <label for="name">Name:</label>
                                <input type="text" name="name" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" id="name" value="{{ old('name') }}" required autofocus />
                                @if ($errors->has('name'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                            </div>
                            
                            <div class="form-group">
                                <label for="email">Email:</label>
                                <input type="email" name="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" id="email" value="{{ old('email') }}" required autocomplete="off">
                                @if ($errors->has('email'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                            
                            <div class="form-group">
                                <label for="mobile">Mobile:</label>
                                <input type="text" name="mobile" class="form-control{{ $errors->has('mobile') ? ' is-invalid' : '' }}" id="mobile" value="{{ old('mobile') }}" required autocomplete="off">
                                @if ($errors->has('mobile'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('mobile') }}</strong>
                                    </span>
                                @endif
                            </div>

                            <div class="form-group">
                                <label for="admin_profile_photo">Profile Photo</label>
                                <input type="file" accept="image/jpeg,image/png,image/jpg" class="form-control" name="admin_profile_photo" id="admin_profile_photo" >
                                <span class="text-danger">{{ $errors->has('admin_profile_photo') ? $errors->first('admin_profile_photo') : ' ' }}</span>
                             </div>
                            
                            <div class="form-group">
                                <label for="password">Password:</label>
                                <input type="password" name="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" id="password" >
                                @if ($errors->has('password'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>

                            <div class="form-group">
                                <label for="password-confirm">Confirm Password</label>
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>

                            </div>
                        
                            <div class="form-group">
                                <input type="submit" class="form-control btn btn-primary" name="btn" value="Register">
                            </div>
                            
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>



@endsection





















{{-- @extends('admin.auth.master')

@section('title')
    Register
@endsection

@section('body')

<div class="container">
    
</div>
@endsection --}}
