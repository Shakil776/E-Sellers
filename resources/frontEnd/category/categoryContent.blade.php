
@extends('frontEnd.master')

@section('title')
	Category
@endsection

<style>
	.animate-menu-push {
  left: 0;
  position: relative;
  transition: all 0.3s ease; }
  .animate-menu-push.animate-menu-push-right {
    left: 200px; }
  .animate-menu-push.animate-menu-push-left {
    left: -200px; }

.animate-menu {
  position: fixed;
  top: 0;
  width: 200px;
  height: 100%;
  transition: all 0.3s ease; }

.animate-menu-left {
  left: -200px; }
  .animate-menu-left.animate-menu-open {
    left: 0; }

.animate-menu-right {
  right: -200px; }
  .animate-menu-right.animate-menu-open {
    right: 0; }

.sidebar-menu {
  list-style: none;
  margin: 0;
  padding: 0;
  background-color: #fff; 
overflow: hidden;
    display: block;}
  .sidebar-menu > li {
    position: relative;
    margin: 0;
    padding: 0; }
    .sidebar-menu > li > a {
      padding: 12px 5px 12px 15px;
      display: block;
      border-left: 3px solid transparent;
      color: #b8c7ce;
      margin-left: 0px !important; 
     }
      .sidebar-menu > li > a > .fa {
        width: 20px; }
    .sidebar-menu > li:hover > a, .sidebar-menu > li.active > a {
      color: #000;
      background: #fff;
      border-left-color: #3c8dbc; }
    .sidebar-menu > li .label,
    .sidebar-menu > li .badge {
      margin-top: 3px;
      margin-right: 5px; }
  .sidebar-menu li.sidebar-header {
    padding: 10px 25px 10px 15px;
    font-size: 12px;
    color: #000;
    background: #fff; }
  .sidebar-menu li > a > .fa-angle-left {
    width: auto;
    height: auto;
    padding: 0;
    margin-right: 10px;
    margin-top: 3px; }
  .sidebar-menu li.active > a > .fa-angle-left {
    transform: rotate(-90deg); }
  .sidebar-menu li.active > .sidebar-submenu {
    display: block; }
  .sidebar-menu a {
    color: #000;
    text-decoration: none; }
  .sidebar-menu .sidebar-submenu {
    display: none;
    list-style: none;
    padding-left: 5px;
    margin: 0 1px;
    background: #fff; }
    .sidebar-menu .sidebar-submenu .sidebar-submenu {
      padding-left: 20px; }
    .sidebar-menu .sidebar-submenu > li > a {
      padding: 5px 5px 5px 15px;
      display: block;
      font-size: 14px;
      color: #000; }
      .sidebar-menu .sidebar-submenu > li > a > .fa {
        width: 20px; }
      .sidebar-menu .sidebar-submenu > li > a > .fa-angle-left,
      .sidebar-menu .sidebar-submenu > li > a > .fa-angle-down {
        width: auto; }
    .sidebar-menu .sidebar-submenu > li.active > a, .sidebar-menu .sidebar-submenu > li > a:hover {
      color: #000; }
      .brand-w3l ul li:last-child{
      	border-bottom: 0px solid #000;
      }
</style>

@section('body')
	<div class="banner1">
	<div class="container">
		<h3><a href="{{ route('/') }}">Home</a> / <span>Products</span></h3>
	</div>
	</div>
	<!--banner-->
	<!--content-->
	<div class="content">
		<div class="products-agileinfo">

			<div class="container">
				<div class="product-agileinfo-grids">
					<div class="col-md-3 product-agileinfo-grid">
						<div class="brand-w3l" id="sidebar-menu" style="margin-top: 0px !important;">
							<h3>Categories</h3>

								@foreach($categories as $cat)
								<ul class="sidebar-menu">
									<li><a href="{{ $cat->url }}">{{ $cat->category_name }} <i class="fa fa-angle-left pull-right"></i></a>
										<ul class="sidebar-submenu">
											@foreach($cat->categories as $subcat)
												<li>
													<a href="{{ $subcat->url }}">{{ $subcat->category_name }} <i class="fa fa-angle-left pull-right"></i></a>
													<ul class="sidebar-submenu">
														@foreach($subcat->categories as $sub_sub_cat)
															<li><a href="{{ $sub_sub_cat->url }}">{{ $sub_sub_cat->category_name }}</a></li>
														@endforeach
													</ul>
												</li>
											@endforeach
										</ul>
									</li>
								</ul>
								@endforeach 

						</div>
						
						
						<div class="brand-w3l">
							<h3>Brands Filter</h3>
							<ul>
								{{-- @foreach($manufacturers as $manufacturer)
									<li><a href="#">{{ $manufacturer->manufacturer_name }}</a></li>
								@endforeach --}}
								
							</ul>
						</div>

					</div>

					<div class="col-md-9 product-agileinfon-grid1 w3l">
						<h2 class="tittle">{{ $categoryDetails->category_name }}</h2>
						<div class="new-arivale-title"></div>

						<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
							<ul id="myTab" class="nav1 nav1-tabs left-tab" role="tablist">
								<ul id="myTab" class="nav nav-tabs left-tab" role="tablist">
							<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true"><img src="{{ asset('frontEnd') }}/images/menu1.png"></a></li>
							<li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile"><img src="{{ asset('frontEnd') }}/images/menu.png"></a></li>
							</ul>
							<div id="myTabContent" class="tab-content">
								<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
									<div class="product-tab">

						@foreach($allProducts as $allProduct)

							<div class="col-md-4 product-tab-grid simpleCart_shelfItem">
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
									<div class="block" style="font-size: 20px;text-align: center;">
										<?php $rating = round($allProduct->rating); ?>

										@for ($i = 0; $i < 5; ++$i)
										    <i class="fa fa-star{{ $rating<=$i?'-o':'' }}" aria-hidden="true" style="color: red;"></i>
										@endfor

									</div>
									<div class="women">
										<h6><a href="">{{ $allProduct->product_name }}</a></h6>

										<p><em class="item_price">TK. {{ $allProduct->product_price }}</em></p>
										<a href="{{-- {{ route('direct-add-to-cart', ['id'=>$categoryProduct->id, 'name'=>$categoryProduct->product_name]) }} --}}" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
									</div>
								</div>
							</div>

						@endforeach
										
										<div class="clearfix"></div>
									</div>
								</div>

									
								<div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">


								@foreach($allProducts as $allProduct)
									<div class="product-tab1">
										<div class="col-md-4 product-tab1-grid">
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
											</div>
										</div>
										<div class="col-md-8 product-tab1-grid1 simpleCart_shelfItem">
											<div class="block" style="font-size: 20px; text-align: left;">
												<?php $rating = round($allProduct->rating); ?>

												@for ($i = 0; $i < 5; ++$i)
												    <i class="fa fa-star{{ $rating<=$i?'-o':'' }}" aria-hidden="true" style="color: red;"></i>
												@endfor

											</div>
											<div class="women">
												<h6><a href="">{{ $allProduct->product_name }}</a></h6>

												<p>{{ $allProduct->short_description }} </p>
												<p><em class="item_price">TK. {{ $allProduct->product_price }}</em></p>
												<a href="{{-- {{ route('direct-add-to-cart', ['id'=>$categoryProduct->id, 'name'=>$categoryProduct->product_name]) }} --}}" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
											</div>
										</div>
										<div class="clearfix"></div>
									</div>	

								@endforeach							
							
									
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>

	<script>
		$(document).ready(function(){
			$.sidebarMenu = function(menu) {
				  var animationSpeed = 300,
				    subMenuSelector = '.sidebar-submenu';

				  $(menu).on('click', 'li a', function(e) {
				    var $this = $(this);
				    
				    var checkElement = $this.next();

				    if (checkElement.is(subMenuSelector) && checkElement.is(':visible')) {
				      checkElement.slideUp(animationSpeed, function() {
				        checkElement.removeClass('menu-open');
				      });
				      checkElement.parent("li").removeClass("active");
				    }

				    //If the menu is not visible
				    else if ((checkElement.is(subMenuSelector)) && (!checkElement.is(':visible'))) {
				      //Get the parent menu
				      var parent = $this.parents('ul').first();
				      //Close all open menus within the parent
				      var ul = parent.find('ul:visible').slideUp(animationSpeed);
				      //Remove the menu-open class from the parent
				      ul.removeClass('menu-open');
				      //Get the parent li
				      var parent_li = $this.parent("li");

				      //Open the target menu and add the menu-open class
				      checkElement.slideDown(animationSpeed, function() {
				        //Add the class active to the parent li
				        checkElement.addClass('menu-open');
				        parent.find('li.active').removeClass('active');
				        parent_li.addClass('active');
				      });
				    }
				    //if this isn't a link, prevent the page from being redirected
				    if (checkElement.is(subMenuSelector)) {
				      e.preventDefault();
				    }
				  });
			}
			$.sidebarMenu($('.sidebar-menu'))
		});
	</script>
@endsection