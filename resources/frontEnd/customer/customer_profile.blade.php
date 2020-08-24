@extends('frontEnd.master')

@section('title')
	Customer Profile
@endsection

@section('body')

	<div class="content">

		<div class="single-wl3">
			<div class="container">
				
				<div class="row">
					<div class="col-md-6 col-md-offset-3  well">	
						<h4 class="text-center">Update Profile</h4>
						<hr/>
						<hr/>	
						<form class="form-horizontal" action="{{ route('update_profile') }}" method="POST" enctype="multipart/form-data">
							@csrf
						  <div class="form-group">
						    <div class="col-sm-12">
						      <input type="text" class="form-control" name="name" id="name" value="{{ $user->name }}"  />
						      <span class="text-danger">{{ $errors->has('name') ? $errors->first('name') : ' ' }}</span>
						    </div>
						  </div>

						  <div class="form-group">
						    <div class="col-sm-12">
						      <input type="email" class="form-control" name="email" id="email" value="{{ $user->email }}" />
						      <span class="text-danger">{{ $errors->has('email') ? $errors->first('email') : ' ' }}</span>
						    </div>
						  </div>

						  <div class="form-group">
						    <div class="col-sm-12">
						      <input type="number" class="form-control" name="mobile" id="mobile" value="{{ $user->mobile }}"  />
						      <span class="text-danger">{{ $errors->has('mobile') ? $errors->first('mobile') : ' ' }}</span>
						    </div>
						  </div>

						  <div class="form-group">
						    <div class="col-sm-12">
						      <textarea class="form-control" name="address" placeholder="Address" id="address" rows="6">{{ $user->address }}</textarea>
						      <span class="text-danger">{{ $errors->has('address') ? $errors->first('address') : ' ' }}</span>
						    </div>
						  </div>

						  <div class="form-group">
						    <div class="col-sm-12">
						      <input type="file" accept="image/*" name="user_profile_photo" id="user_profile_photo" />
						      <img src="{{ asset($user->user_profile_photo) }}" alt="">
						      <span class="text-danger">{{ $errors->has('user_profile_photo') ? $errors->first('user_profile_photo') : ' ' }}</span>
						    </div>
						  </div>

						  <div class="form-group">
						    <div class="col-sm-12">
						      <button type="submit" class="btn btn-success btn-block">Update</button>
						    </div>
						  </div>
						</form>
					</div>				

				</div>	
			</div>
		</div>
	</div>

@endsection