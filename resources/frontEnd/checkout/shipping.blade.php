@extends('frontEnd.master')

@section('title')
	Shipping
@endsection

@section('body')
	<div class="banner1">
		<div class="container">
			<h3><a href="{{ route('/') }}">Home</a> / <span>Shipping</span></h3>
		</div>
	</div>
	

	<div class="content">

		<div class="single-wl3">
			<div class="container">
				<div class="row">
					<div class="col-md-12 well">		
						<h4 class="text-center text-success">Dear {{ Session::get('customerName') }}, You have to give us product shipping info to complete your valuable order. If your billing info and shipping info are same then just press on send shipping info Button. </h4>
					</div>
				</div>

				<div class="row">
					<div class="col-md-8 col-md-offset-2">	
						<h1 class="text-center well">Shipping Info</h1>
						<hr/>	
						<form class="form-horizontal" action="{{ route('new-shipping') }}" method="POST">
							@csrf
						  <div class="form-group">
						    <div class="col-sm-12">
						      <input type="text" class="form-control" name="name" id="name" placeholder="Full Name" value="{{ $user->name }}"  />
						    </div>
						  </div>

						  <div class="form-group">
						    <div class="col-sm-12">
						      <input type="email" class="form-control" name="email" id="email" placeholder="Email" value="{{ $user->email }}" />
						    </div>
						  </div>

						  <div class="form-group">
						    <div class="col-sm-12">
						      <input type="number" class="form-control" name="mobile" id="mobile" placeholder="Mobile Number" value="{{ $user->mobile }}"  />
						    </div>
						  </div>

						  <div class="form-group">
						    <div class="col-sm-12">
						      <textarea class="form-control" name="address" id="address" rows="6" placeholder="Address">{{ $user->address }}</textarea>
						    </div>
						  </div>

						  <div class="form-group">
						    <div class="col-sm-12">
						      <button type="submit" class="btn btn-success btn-block">Send Shipping Info</button>
						    </div>
						  </div>
						</form>
					</div>

				</div>	
			</div>
		</div>
	</div>

@endsection