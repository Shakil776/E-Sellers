@extends('frontEnd.master')

@section('title')
	Vendor Register
@endsection

@section('body')

	<div class="content">

		<div class="single-wl3">
			<div class="container">
				@if(Session::get('message'))
					<div id="msg" class="alert alert-success left-icon-alert" role="alert">
		                <strong>Well done! &nbsp;</strong>{{ Session::get('message') }}
		            </div>
	            @endif
				
				<div class="row">
					<div class="col-md-8 col-md-offset-2  well">	
						<h4 class="text-center">Vendor Register </h4>
						<hr/>	

						<form class="form-horizontal" action="{{-- {{ route('register_vendor') }} --}}" method="POST" enctype="multipart/form-data">
		    			@csrf

		    			<div class="form-group">
						    <label class="control-label col-sm-3" for="name">Vendor Name</label>
						    <div class="col-sm-9">
						    	 <input type="text" value="{{ old('name') }}" class="form-control" name="name" id="name" placeholder="Vendor Name"  required/>
						      <span class="text-danger">{{ $errors->has('name') ? $errors->first('name') : ' ' }}</span>
						    </div>
						 </div>

						 <div class="form-group">
						    <label class="control-label col-sm-3" for="email">Email Address</label>
						    <div class="col-sm-9">
						    	 <input type="email" class="form-control" value="{{ old('email') }}" name="email" id="email" placeholder="Email Address" required/>
						      <span class="text-danger">{{ $errors->has('email') ? $errors->first('email') : ' ' }}</span>
						    </div>
						 </div>

						 <div class="form-group">
						    <label class="control-label col-sm-3" for="mobile">Mobile</label>
						    <div class="col-sm-9">
						    	 <input type="number" class="form-control" value="{{ old('mobile') }}" name="mobile" id="mobile" placeholder="Mobile Number"  required/>
						      <span class="text-danger">{{ $errors->has('mobile') ? $errors->first('mobile') : ' ' }}</span>
						    </div>
						 </div> 

						 <div class="form-group">
						    <label class="control-label col-sm-3" for="address">Address</label>
						    <div class="col-sm-9">
						    	 <textarea class="form-control" value="{{ old('address') }}" name="address" placeholder="Address" id="address" rows="6" required></textarea>
						      <span class="text-danger">{{ $errors->has('address') ? $errors->first('address') : ' ' }}</span>
						    </div>
						 </div>

						  <div class="form-group">
						    <label class="control-label col-sm-3" for="license_no">License Number</label>
						    <div class="col-sm-9">
						    	 <input type="text" class="form-control" value="{{ old('license_no') }}" name="license_no" id="license_no" placeholder="License Number"  required/>
						      <span class="text-danger">{{ $errors->has('license_no') ? $errors->first('license_no') : ' ' }}</span>
						    </div>
						 </div> 


						 <div class="form-group">
						    <label class="control-label col-sm-3" for="license_image">Licnese Image</label>
						    <div class="col-sm-9">
						    	<input type="file" accept="image/*" name="license_image" id="license_image" required />
						      <span class="text-danger">{{ $errors->has('license_image') ? $errors->first('license_image') : ' ' }}</span>
						    </div>
						 </div>

						  <div class="form-group">
						    <label class="control-label col-sm-3" for="nid_no">NID Number</label>
						    <div class="col-sm-9">
						    	 <input type="text" class="form-control" value="{{ old('nid_no') }}" name="nid_no" id="nid_no" placeholder="National ID Number"  required/>
						      <span class="text-danger">{{ $errors->has('nid_no') ? $errors->first('nid_no') : ' ' }}</span>
						    </div>
						 </div> 

						 <div class="form-group">
						    <label class="control-label col-sm-3" for="nid_image">NID Image</label>
						    <div class="col-sm-9">
						    	<input type="file" accept="image/*" name="nid_image" id="nid_image" required />
						      <span class="text-danger">{{ $errors->has('nid_image') ? $errors->first('nid_image') : ' ' }}</span>
						    </div>
						 </div>

						 <div class="form-group">
						    <label class="control-label col-sm-3" for="password">Password</label>
						    <div class="col-sm-9">
						    	  <input type="password" class="form-control" name="password" id="password" placeholder="Password" required />
						      <span class="text-danger">{{ $errors->has('password') ? $errors->first('password') : ' ' }}</span>
						    </div>
						 </div> 

						  <div class="form-group">
						    <label class="control-label col-sm-3" for="password_confirm">Confirm Password</label>
						    <div class="col-sm-9">
						    	  <input type="password" class="form-control" name="password_confirm" id="password_confirm" placeholder="Confirm Password" required />
						      <span class="text-danger">{{ $errors->has('password') ? $errors->first('password') : ' ' }}</span>
						    </div>
						 </div>

						 <div class="form-group">
						 	<label class="control-label col-sm-3"></label>
						    <div class="col-sm-9">
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