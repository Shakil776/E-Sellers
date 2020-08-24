@extends('frontEnd.master')

@section('title')
	Product Details
@endsection

@section('body')

	<div class="banner1">
		<div class="container">
			<h3><a href="{{ route('/') }}">Home</a> / <span>Product Details</span></h3>
		</div>
	</div>
	<!--banner-->
	{{-- message --}}
	@if(Session::get('error'))
		<div class="container-fluid">
			<div class="row text-center">
				<div class="col-md-12">
					<div id="msg" class="alert alert-danger left-icon-alert" role="alert">
			            <h3>{{ Session::get('error') }}</h3>
			        </div>
				</div>
			</div>
		</div>
    @endif
    @if(Session::get('success'))
		<div class="container-fluid">
			<div class="row text-center">
				<div class="col-md-12">
					<div id="msg" class="alert alert-success left-icon-alert" role="alert">
			            <h3>{{ Session::get('success') }}</h3>
			        </div>
				</div>
			</div>
		</div>
    @endif

	<!--content-->
		<div class="content">
			<!--single-->
			<div class="single-wl3">
				<div class="container">
					<div class="single-grids">
						<div class="col-md-9 single-grid">
							<div clas="single-top">
								<div class="single-left">
									<div class="flexslider">
										<ul class="slides">
											<li data-thumb="{{ asset($productDetails->product_image) }}">
												<div class="thumb-image"> <img src="{{ asset($productDetails->product_image) }}" data-imagezoom="true" class="img-responsive"> </div>
											</li>
										</ul>
									</div>
								</div>
								<div class="single-right simpleCart_shelfItem">
									<h4>{{ $productDetails->product_name }}</h4>

									
									<div class="block" style="font-size: 20px;">
										<?php $rating = round($productDetails->rating); ?>

										@for ($i = 0; $i < 5; ++$i)
										    <i class="fa fa-star{{ $rating<=$i?'-o':'' }}" aria-hidden="true" style="color: red;"></i>
										@endfor

										<?php echo "($productDetails->rating_count)"; ?>
									</div>


									<p class="price item_price" id="getPrice">TK. {{ $productDetails->product_price }}</p>
									<div class="description">
										<p><span>Code : </span> {{ $productDetails->product_code }}</p>
										<p><span>Availability : </span>@if($total_stock > 0) In Stock @else Out of Stock @endif</p>
										<p><span>Quick Overview : </span> {{ $productDetails->short_description }}</p>
									</div>

									<form action="{{ route('add-to-cart') }}" method="POST">
										@csrf
										<div class="color-quality">
											<h6>Quantity :</h6>
												<div class="quantity"> 
													<input type="number" name="qty" value="1" min="1" />
													<input type="hidden" name="id" value="{{ $productDetails->id }}" />
												</div>	
										</div>
										<div class="women">

											@if(!empty($productDetails->attributes))
											 <span class="size">
											 	
											 	<h6>Size :</h6>
											 	<select id="selSize" name="size">
											 		@foreach($productDetails->attributes as $sizes)
											 			<option value="{{ $productDetails->id }}-{{ $sizes->size }}">{{ $sizes->size }}</option>
											 		@endforeach
											 	</select>
											 </span>
											 @endif

											 <span class="size">
											 	@if(!empty($productDetails->attributes))
											 	<h6>Color :</h6>
												 	<select id="selColor" name="color">
												 		@foreach($productDetails->attributes as $color)
												 			<option value="{{ $productDetails->id }}-{{ $color->color }}">{{ $color->color }}</option>
												 		@endforeach
												 	</select>
											 	@endif
											 </span>
											{{-- @if($total_stock > 0) --}}
												<input type="submit" name="btn" value="Add To Cart" class="my-cart-b item_add" />

												
											{{-- @endif --}}
										</div>
									</form>

									<form action="{{ route('add-to-wishlist') }}" method="POST">
										@csrf
										<input type="hidden" name="product_id" value="{{ $productDetails->id }}" />
										<input type="submit" name="wishlist" value="Add To Wishlist" class="my-cart-b item_add" />
									</form>


								</div>
								<div class="clearfix"> </div>
							</div>
						</div>


						<div class="col-md-3 single-grid1">
							<h3>Recent Products</h3>

							<div class="recent-grids">
								<div class="recent-left">
									<a href="single.html"><img class="img-responsive " src="{{ asset('frontEnd') }}/images/r.jpg" alt=""></a>	
								</div>

								<div class="recent-right">
									<h6 class="best2"><a href="single.html">Lorem ipsum dolor </a></h6>
									<div class="block">
										<div class="starbox small ghosting"> </div>
									</div>
									<span class=" price-in1"> $ 29.00</span>
								</div>	
								<div class="clearfix"> </div>
							</div>
							
						</div>

						<div class="clearfix"> </div>
					</div>
					<!--Product Description-->
		<div class="product-w3agile">
			<h3 class="tittle1">Product Description</h3>
			<div class="new-arivale-title"></div>
			<div class="product-grids">
				

				<div class="col-md-8 product-grid1">
					<div class="tab-wl3">
						<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
							<ul id="myTab" class="nav nav-tabs left-tab" role="tablist">
								<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Description</a></li>
								<li role="presentation"><a href="#reviews" role="tab" id="reviews-tab" data-toggle="tab" aria-controls="reviews">Reviews ({{ $reviews_count}})</a></li>

							</ul>
							<div id="myTabContent" class="tab-content">
								<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
									<div class="descr">
										<h4>{{ $productDetails->product_name }} </h4>
										<p>{{ $productDetails->long_description }}</p>	
									</div>
								</div>
								<div role="tabpanel" class="tab-pane fade" id="reviews" aria-labelledby="reviews-tab">
									<div class="descr">
										
										<div class="reviews-bottom">

											@foreach($reviews as $review)
												<span><strong>{{ $review->customer_name }}</strong></span>

												@for ($i = 0; $i < 5; ++$i)
												    <i class="fa fa-star{{ $review->rating<=$i?'-o':'' }}" aria-hidden="true" style="color: red;"></i>
												@endfor


												<p>{{ $review->review }}</p>
											@endforeach
										</div>
									</div>
								</div>
								<div role="tabpanel" class="tab-pane fade" id="custom" aria-labelledby="custom-tab">
									
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
					<!--Product Description-->
				</div>
			</div>
			<!--single-->
			<div class="new-arrivals-w3agile">
					<div class="container">
						<h3 class="tittle1">Related Products</h3>
						<div class="new-arivale-title"></div>
						<div class="arrivals-grids">

							
							@foreach($relatedProducts as $relatedProduct)
							<div class="col-md-3 arrival-grid simpleCart_shelfItem">
								<div class="grid-arr">
									<div  class="grid-arrival">
										<figure>		
											<a href="{{ asset('/product-details/'.$relatedProduct->id) }}">
												<div class="grid-img">
													<img  src="{{ asset($relatedProduct->product_image) }}" class="img-responsive" alt="">
												</div>
												<div class="grid-img">
													<img src="{{ asset($relatedProduct->product_image) }}" class="img-responsive"  alt="">
												</div>			
											</a>		
										</figure>	
									</div>
									<div class="ribben">
										<p>SALE</p>
									</div>
									<div class="block" style="font-size: 20px;">
										<?php $rating = round($productDetails->rating); ?>

										@for ($i = 0; $i < 5; ++$i)
										    <i class="fa fa-star{{ $rating<=$i?'-o':'' }}" aria-hidden="true" style="color: red;"></i>
										@endfor

										<?php echo "($productDetails->rating_count)"; ?>
									</div>
									<div class="women">
										<h6><a href="">{{ $relatedProduct->product_name }}</a></h6>
										<span class="size">XL / XXL / S </span>
										<p ><em class="item_price">TK. {{ $relatedProduct->product_price }}</em></p>
										<a href="{{ asset('/product-details/'.$relatedProduct->id) }}" class="my-cart-b item_add">View Details</a>
									</div>
								</div>
							</div>
							@endforeach

							<div class="clearfix"></div>
							{{-- {{ $retatedProducts->links() }} --}}
						</div>
					</div>
				</div>
			<!--new-arrivals-->
		</div>
@endsection