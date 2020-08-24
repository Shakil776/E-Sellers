@extends('frontEnd.master')

@section('title')
	History
@endsection

@section('body')
	<div class="banner1">
		<div class="container">
			<h3><a href="{{ route('/') }}">Home</a> / <span>History</span></h3>
		</div>
	</div>
	

	<div class="content">

		<div class="new-arrivals-w3agile">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h3 class="text-center text-success">My Order </h3>
						<hr/>
						<table class="table table-bordered">
							<tr class="bg-primary ">
								{{-- <th class="text-center">SL No</th> --}}
								<th class="text-center">Order Invoice No</th>
								<th class="text-center">Order Date</th>
								<th class="text-center">Total Price</th>
								<th class="text-center">Action</th>
							</tr>

							@php($i = 1)
							@foreach($ordersHistoris as $ordersHistory)
							<tr>
								{{-- <td>{{ $i++ }}</td> --}}
								<td>{{ $ordersHistory->id }}</td>
								<td>{{ date('j F Y', strtotime($ordersHistory->created_at)) }}</td>
                                <td>TK. {{ $ordersHistory->order_total }}</td>
                                {{-- <td>{{ $ordersHistory->created_at }}</td>
                                <td>{{ $ordersHistory->order_status }}</td>
                                <td>{{ $ordersHistory->payment_type }}</td>
                                <td>{{ $ordersHistory->payment_status }}</td> --}}

								<td>
									<a class="btn btn-info btn-xs" href="{{ route('view-order-history', ['id'=>$ordersHistory->id]) }}" title="View Order Details">
										<span>View Details</span>
									</a>

									<a class="btn btn-primary btn-xs" href="#" title="View Order Details" data-toggle="modal" data-target="#reviewModal{{ $ordersHistory->id }}">
										<span>Review</span>
									</a>

								</td>
							</tr>

							
							
							<!-- Modal -->
							<div id="reviewModal{{ $ordersHistory->id }}" class="modal fade" role="dialog">
								<div class="modal-dialog">
								  <!-- Modal content-->
								  <div class="modal-content">
									<div class="modal-header">
									  <button type="button" class="close" data-dismiss="modal">&times;</button>
									</div>

									<div class="modal-body">
										<div class="reviews-bottom">
											<h4>Add Reviews</h4>
											<p>Your email address will not be published. Required fields are marked *</p>
											<p>Your Rating</p>
											<div class="block">
												<div class="starbox small ghosting"><div class="positioner"><div class="stars"><div class="ghost" style="width: 42.5px; display: none;"></div><div class="colorbar" style="width: 42.5px;"></div><div class="star_holder"><div class="star star-0"></div><div class="star star-1"></div><div class="star star-2"></div><div class="star star-3"></div><div class="star star-4"></div></div></div></div>
												</div>
											</div>
											<form action="#" method="post">
												<label>Your Review </label>
												<textarea type="text" Name="Message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}" required="">Message...</textarea>
												<div class="row">
													<div class="clearfix"></div>
												</div>
												<input type="submit" value="SEND">
												
											</form>
										</div>
									</div>

								  </div>

								</div>
							</div>
									
							@endforeach


						</table>

					</div>
				</div>	

			</div>
		</div>
	</div>

@endsection