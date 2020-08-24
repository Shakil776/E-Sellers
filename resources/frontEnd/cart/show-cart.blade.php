@extends('frontEnd.master')

@section('title')
	Cart
@endsection

@section('body')
	<div class="banner1">
		<div class="container">
			<h3><a href="{{ route('/') }}">Home</a> / <span>Add to Cart</span></h3>
		</div>
	</div>
	

	<div class="content">

		<div class="new-arrivals-w3agile">
			<div class="container">
				<div class="row">
					<div class="col-md-11 col-md-offset-1">
						<h3 class="text-center text-success">My Shopping Bag</h3>
						<hr/>
						@if($countCartItem != 0)
							<table class="table table-bordered">
								<tr class="bg-primary text-center">
									<th>SL No</th>
									<th>Name</th>
									<th>Image</th>
									<th>Price</th>
									<th>Code</th>
									<th>Quantity</th>
									<th>Total Price</th>
									<th>Action</th>
								</tr>
								@php($i = 1)
								@php($sum = 0)
								@foreach($cartItems as $cartItem)
								<tr>
									<td> {{ $i++ }} </td>
									<td>{{ $cartItem->name }}</td>
									<td><img src="{{ asset($cartItem->options->image) }}" alt="" height="50" width="50"></td>
									<td>{{ $cartItem->price }}</td>
									<td>{{ $cartItem->options->code  }}</td>

									<td>
										<form action="{{ route('update-cart') }}" method="POST">
											@csrf
											<input type="number" name="qty" value="{{ $cartItem->qty }}" />
											<input type="hidden" name="rowId" value="{{ $cartItem->rowId }}" min="1" />
											<input type="submit" name="btn" class="btn btn-primary" value="Update" />
										</form>
										
									</td>
									<td>{{ $total = $cartItem->price * $cartItem->qty }}</td>
									<td>
										<a href="{{ route('delete-cart-item', ['rowId' => $cartItem->rowId]) }}" class="btn btn-danger btn-xs" title="Remove">
											<span class="glyphicon glyphicon-trash"></span>
										</a>
									</td>
								</tr>
									
									<?php $sum = $sum + $total; ?>
									
								@endforeach

							</table>
							<hr />
							<table class="table table-bordered">
								<tr>
									<th>Item Total (TK.)</th>
									<td>{{ $sum }}</td>
								</tr>
								<tr>
									<th>Vat Total (TK.)</th>
									<td>{{ $vat = 0 }}</td>
								</tr>
								<tr>
									<th>Grand Total (TK.)</th>
									<td>{{ $orderTotal = $sum + $vat }}</td>
									<?php Session::put('orderTotal', $orderTotal); ?>
								</tr>
							</table>
						@else
							<tr><td>Your Shopping Bag is empty.</td></tr>
						@endif

					</div>
				</div>	

				<div class="row">
					<div class="col-md-11 col-md-offset-1">
						@if(Session::get('customerId') && Session::get('shippingId'))
							<a href="{{ route('checkout-payment') }}" class="btn btn-success">Checkout</a>
						@elseif(Session::get('customerId'))
							<a href="{{ route('checkout-shipping') }}" class="btn btn-success">Checkout</a>
						@else
							
							@if($countCartItem != 0)
								<a href="{{ route('checkout') }}" class="btn btn-success">Checkout</a>
							@endif
							
						@endif

						<a href="{{ route('/') }}" class="btn btn-success">Continue Shopping</a>
					</div>
				</div>		
			</div>
		</div>
	</div>

@endsection