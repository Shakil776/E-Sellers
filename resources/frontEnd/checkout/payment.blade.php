@extends('frontEnd.master')

@section('title')
	Payment
@endsection

@section('body')
	<div class="banner1">
		<div class="container">
			<h3><a href="{{ route('/') }}">Home</a> / <span>Payment</span></h3>
		</div>
	</div>
	

	<div class="content">

		<div class="single-wl3">
			<div class="container">
				<div class="row">
					<div class="col-md-12 well">		
						<h4 class="text-center text-success">Dear {{ Session::get('customerName') }}, You have to give us product payment method... </h4>
					</div>
				</div>
				<div class="row">
					<div class="col-md-8 col-md-offset-2">	
						<h1 class="text-center well">Payment Info</h1>
						<hr/>	
						<form action="{{ route('new-order') }}" method="POST">
							@csrf
							<table class="table table-bordered">
								<tr>
									<th>Cash On Delivery</th>
									<td><input type="radio" name="payment_type" value="Cash">&nbsp;Cash On Delivery</td>
								</tr>
								<tr>
									<th>Bkash</th>
									<td><input type="radio" name="payment_type" value="Bkash">&nbsp;Bkash</td>
								</tr>
								<tr>
									<th>Rocket</th>
									<td><input type="radio" name="payment_type" value="Rocket">&nbsp;Rocket</td>
								</tr>
								<tr>
									<th>Ukash</th>
									<td><input type="radio" name="payment_type" value="Ukash">&nbsp;Ukash</td>
								</tr>
								<tr>
									<th>Paypal</th>
									<td><input type="radio" name="payment_type" value="Paypal">&nbsp;Paypal</td>
								</tr>
								<tr>
									<th></th>
									<td><input type="submit" class="btn btn-success" name="btn" value="Confirm Order"></td>
								</tr>
							</table>
						</form>
					</div>

				</div>	
			</div>
		</div>
	</div>

@endsection