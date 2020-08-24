@extends('frontEnd.master')

@section('title')
	Customer Login
@endsection

@section('body')
	<div class="banner1">
		<div class="container">
			<h3><a href="{{ route('/') }}">Home</a> / <span>Login</span></h3>
		</div>
	</div>
	

	<div class="content">

		<div class="single-wl3">
			<div class="container">
				
				<div class="row">			

					<div class="col-md-4 col-md-offset-4 well">	

						<h4 class="text-center">Login</h4>
						@if(Session::get('error'))
							<div id="msg" class="alert alert-danger left-icon-alert" role="alert">
				                <strong>Oppps! &nbsp;</strong>{{ Session::get('error') }}
				            </div>
			            @endif
						<hr/>
						<h4 class="text-center">Not Register? <a href="{{ route('user_register') }}">Registration Here</a> </h4>
						<hr/>
						<h3 class="text-danger text-center"></h3>
						<hr/>	
						<form class="form-horizontal" action="{{ route('login_customer') }}" method="POST" enctype="multipart/form-data">
							@csrf
						  <div class="form-group">
						    <div class="col-sm-12">
						      <input type="email" class="form-control" name="email" id="email" placeholder="Email Address" autocomplete="1" />
						      <span class="text-danger">{{ $errors->has('email') ? $errors->first('email') : ' ' }}</span>
						    </div>
						  </div>
						  <div class="form-group">
						    <div class="col-sm-12">
						      <input type="password" class="form-control" name="password" id="password" placeholder="Password" autocomplete="1" />
						      <span class="text-danger">{{ $errors->has('password') ? $errors->first('password') : ' ' }}</span>
						    </div>
						  </div>
						  <div class="form-group">
						    <div class="col-sm-12">
						      <button type="submit" class="btn btn-success btn-block">Login</button>
						    </div>
						  </div>
						</form>
					</div>

				</div>	
			</div>
		</div>
	</div>

@endsection