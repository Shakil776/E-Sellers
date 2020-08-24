@extends('frontEnd.master')

@section('title')
	Customer Register
@endsection

@section('body')
	<div class="banner1">
		<div class="container">
			<h3><a href="{{ route('/') }}">Home</a> / <span>Register</span></h3>
		</div>
	</div>
	

	<div class="content">

		<div class="single-wl3">
			<div class="container">
				
				<div class="row">
					<div class="col-md-6 col-md-offset-3  well">	
						<h4 class="text-center">Register </h4>
						<hr/>
						<h4 class="text-center">Already Register? <a href="{{ route('user_login') }}">Login Here</a> </h4>
						<hr/>	
						<form class="form-horizontal" action="{{ route('save_customer') }}" method="POST" enctype="multipart/form-data">
							@csrf
						  <div class="form-group">
						    <div class="col-sm-12">
						      <input type="text" class="form-control" name="name" id="name" placeholder="Full Name"  />
						      <span class="text-danger">{{ $errors->has('name') ? $errors->first('name') : ' ' }}</span>
						    </div>
						  </div>

						  <div class="form-group">
						    <div class="col-sm-12">
						      <input type="email" class="form-control" name="email" id="email" placeholder="Email Address" />
						      <span class="text-danger">{{ $errors->has('email') ? $errors->first('email') : ' ' }}</span>
						    </div>
						  </div>

						  <div class="form-group">
						    <div class="col-sm-12">
						      <input type="number" class="form-control" name="mobile" id="mobile" placeholder="Mobile Number"  />
						      <span class="text-danger">{{ $errors->has('mobile') ? $errors->first('mobile') : ' ' }}</span>
						    </div>
						  </div>

						  <div class="form-group">
						    <div class="col-sm-12">
						      <textarea class="form-control" name="address" placeholder="Address" id="address" rows="6"></textarea>
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
						      <input type="password" class="form-control" name="password" id="password" placeholder="Password">
						      <span class="text-danger">{{ $errors->has('password') ? $errors->first('password') : ' ' }}</span>
						    </div>
						  </div>


						  <div class="form-group">
						    <div class="col-sm-12">
						      <button type="submit" class="btn btn-success btn-block">Register</button>
						    </div>
						  </div>
						</form>
					</div>				

				</div>	
			</div>
		</div>
	</div>

@endsection