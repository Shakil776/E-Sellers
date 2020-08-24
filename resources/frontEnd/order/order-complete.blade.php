@extends('frontEnd.master')

@section('title')
	Complete Order
@endsection

@section('body')
	<div class="banner1">
		<div class="container">
			<h3><a href="{{ route('/') }}">Home</a> / <span>Complete</span></h3>
		</div>
	</div>
	

	<div class="content">

		<div class="single-wl3">
			<div class="container">
				<div class="row">
					<div class="col-md-12">		
						<h4 class="text-center text-success" style="margin:5em 0px;">Dear {{ Session::get('customerName') }}, Thank you for making this purchase! Happy Shopping. <br> We will contact with you as soon as possible. </h4>
					</div>
				</div>
	
			</div>
		</div>
	</div>

@endsection