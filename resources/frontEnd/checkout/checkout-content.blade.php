@extends('frontEnd.master')

@section('title')
	Checkout
@endsection

@section('body')
	<div class="banner1">
		<div class="container">
			<h3><a href="{{ route('/') }}">Home</a> / <span>Checkout</span></h3>
		</div>
	</div>
	

	<div class="content">

		<div class="new-arrivals-w3agile">
			<div class="container">
				<div class="row">
					<div class="col-md-12">		
						<h3 class="text-success text-center">You have to login to purchage any products from here. <br> If you are not registerd then please register first.</h3>
					</div>
				</div>
				<div class="row">
					<div class="col-md-5 well">	
						<h4 class="text-center">Not Registered ? Register Here.</h4>
						<hr/>	
						<form class="form-horizontal" action="{{ route('cutomer-register') }}" method="POST">
							@csrf
						  <div class="form-group">
						    <div class="col-sm-12">
						      <input type="text" class="form-control" name="name" id="name" placeholder="Enter Full Name" autocomplete="off"/>
						      <span class="text-danger">{{ $errors->has('name') ? $errors->first('name') : ' ' }}</span>
						    </div>
						  </div>

						  <div class="form-group">
						    <div class="col-sm-12">
						      <input type="email" class="form-control" name="email" id="email" placeholder="Enter Email Address" autocomplete="off" />
						      <span class="text-danger">{{ $errors->has('email') ? $errors->first('email') : ' ' }}</span>
						    </div>
						  </div>

						  <div class="form-group">
						    <div class="col-sm-12">
						      <input type="number" class="form-control" name="mobile" id="mobile" placeholder="Enter Mobile Number"  aautocomplete="off"/>
						      <span class="text-danger">{{ $errors->has('mobile') ? $errors->first('mobile') : ' ' }}</span>
						    </div>
						  </div>

						   <div class="form-group">
						    <div class="col-sm-12">
						      <textarea class="form-control" name="address" placeholder="Enter your address" id="address" rows="6" autocomplete="off"></textarea>
						      <span class="text-danger">{{ $errors->has('address') ? $errors->first('address') : ' ' }}</span>
						    </div>
						  </div>

						  <div class="form-group">
						    <div class="col-sm-12">
						      <input type="file" accept="image/*" name="user_profile_photo" id="user_profile_photo" />
						      <span class="text-danger">{{ $errors->has('user_profile_photo') ? $errors->first('user_profile_photo') : ' ' }}</span>
						    </div>
						  </div>

						  <div class="form-group">
						    <div class="col-sm-12">
						      <input type="password" class="form-control" name="password" id="password" placeholder="Password" autocomplete="off">
						      <span class="text-danger">{{ $errors->has('password') ? $errors->first('password') : ' ' }}</span>
						    </div>
						  </div>


						  <div class="form-group">
						    <div class="col-sm-12">
						      <button type="submit" class="btn btn-success">Register</button>
						    </div>
						  </div>
						</form>
					</div>

					<div class="col-md-5 well col-md-offset-2">	
						<h4 class="text-center">Already Registered? Login Here.</h4>
						<hr>
						<h3 class="text-danger text-center">{{ Session::get('message') }}</h3>
						<hr/>	
						<form class="form-horizontal" action="{{ route('cutomer-login') }}" method="POST">
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
						      <button type="submit" class="btn btn-success">Login</button>
						    </div>
						  </div>
						</form>
					</div>

				</div>	
			</div>
		</div>
	</div>

@endsection