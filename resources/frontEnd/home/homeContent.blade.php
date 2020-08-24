@extends('frontEnd.master')

@section('title')
	Home
@endsection

@section('body')
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

		{{-- slider --}}
		@include('frontEnd.includes.slider');
		{{-- content --}}
		<div class="content">
		
		<!--new-arrivals-->
			<div class="ban-bottom-w3l">
				<div class="container">
					<h2 class="tittle">New Arrivals</h2>
					<div class="new-arivale-title"></div>
					<p class="arivale-text">New Products are Comiing Every Day. Happy Buying. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam ducimus rem vel, atque incidunt. !!!</p>

					<div class="arrivals-grids">


						@foreach($allProducts as $allProduct)
						<div class="col-md-3 arrival-grid simpleCart_shelfItem">
							<div class="grid-arr">
								<div  class="grid-arrival">
									<figure>		
										<a href="{{ asset('/product-details/'.$allProduct->id) }}" class="new-gri">
											<div class="grid-img">
												<img  src="{{ asset($allProduct->product_image) }}" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="{{ asset($allProduct->product_image) }}" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="ribben">
									<p>NEW</p>
								</div>

								<div class="block" style="font-size: 20px;text-align: center;">
									<?php $rating = round($allProduct->rating); ?>

									@for ($i = 0; $i < 5; ++$i)
									    <i class="fa fa-star{{ $rating<=$i?'-o':'' }}" aria-hidden="true" style="color: red;"></i>
									@endfor

								</div>

								<div class="women" style="text-align: center;">
									<h6><a href="{{ asset('/product-details/'.$allProduct->id) }}">{{ $allProduct->product_name }}</a></h6>
									
									<p ><em class="item_price">TK. {{ $allProduct->product_price }}</em></p>
									<a href="{{ asset('/product-details/'.$allProduct->id) }}" data-text="Add To Cart" class="my-cart-b item_add">View Details</a>
								</div>
							</div>
						</div>
						@endforeach
						
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		<!--new-arrivals-->


		<!--Products-->
			<div class="product-agile">
				<div class="container">
					<h2 class="tittle"> New Products</h2>
					<div class="new-arivale-title"></div>
					<p class="arivale-text" style="margin-bottom: 20px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione magnam assumenda rem deserunt blanditiis quidem, laborum, soluta, quam similique voluptate ullam nulla molestias repellendus sunt, nemo eligendi possimus veniam corporis.</p>


					{{-- <div class="arrivals-grids">


						@foreach($allProducts as $allProduct)
						<div class="col-md-3 arrival-grid simpleCart_shelfItem">
							<div class="grid-arr">
								<div  class="grid-arrival">
									<figure>		
										<a href="{{ route('product-details', ['id'=>$allProduct->id, 'name'=>$allProduct->product_name]) }}" class="new-gri">
											<div class="grid-img">
												<img  src="{{ asset($allProduct->product_image) }}" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="{{ asset($allProduct->product_image) }}" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="ribben">
									<p>NEW</p>
								</div>
								<div class="block">
									<div class="starbox small ghosting"> </div>
								</div>
								<div class="women">
									<h6><a href="{{ route('product-details', ['id'=>$allProduct->id, 'name'=>$allProduct->product_name]) }}">{{ $allProduct->product_name }}</a></h6>
									<span class="size">XL / XXL / S </span>
									<p ><em class="item_price">TK. {{ $allProduct->product_price }}</em></p>
									<a href="{{ route('direct-add-to-cart', ['id'=>$allProduct->id, 'name'=>$allProduct->product_name]) }}" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
								</div>
							</div>
						</div>
						@endforeach

						<div class="clearfix"></div>
						{{ $allProducts->links() }}
					</div> --}}


					
				</div>
			</div>
		<!--Products-->
		
			<div class="new-arrivals-w3agile">
				<div class="container">
					<h2 class="tittle1">Best Sellers</h2>
					<div class="new-arivale-title"></div>
					<p class="arivale-text" style="margin-bottom: 20px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione magnam assumenda rem deserunt blanditiis quidem, laborum, soluta, quam similique voluptate ullam nulla molestias repellendus sunt, nemo eligendi possimus veniam corporis.</p>
					

					{{-- <div class="arrivals-grids">


						@foreach($bestSellerProducts as $bestSellerProduct)
						<div class="col-md-3 arrival-grid simpleCart_shelfItem">
							<div class="grid-arr">
								<div  class="grid-arrival">
									<figure>		
										<a href="{{ route('product-details', ['id'=>$bestSellerProduct->id, 'name'=>$bestSellerProduct->product_name]) }}" class="new-gri">
											<div class="grid-img">
												<img  src="{{ asset($bestSellerProduct->product_image) }}" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="{{ asset($bestSellerProduct->product_image) }}" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="ribben">
									<p>NEW</p>
								</div>
								<div class="block">
									<div class="starbox small ghosting"> </div>
								</div>
								<div class="women">
									<h6><a href="{{ route('product-details', ['id'=>$bestSellerProduct->id, 'name'=>$bestSellerProduct->product_name]) }}">{{ $bestSellerProduct->product_name }}</a></h6>
									<span class="size">XL / XXL / S </span>
									<p ><em class="item_price">TK. {{ $bestSellerProduct->product_price }}</em></p>
									<a href="{{ route('direct-add-to-cart', ['id'=>$bestSellerProduct->id, 'name'=>$bestSellerProduct->product_name]) }}" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
								</div>
							</div>
						</div>
						@endforeach
						
						<div class="clearfix"></div>
					</div> --}}


				</div>
			</div>
		<!--new-arrivals-->
		</div>
@endsection