<div class="footer-w3l">
	<div class="container">
		<div class="footer-grids">
			<div class="col-md-3 footer-grid">
				<h4>About </h4>
				<p>E-Sellers Online Shop in Bangladesh for men, women and kids. We sell various kinds of gift items, gadget accessories, electronics products and other necessary accessories. Buy your favorite products at E-Sellers Online Shop.</p>
				<div class="social-icon">
					<a href="#"><i class="icon"></i></a>
					<a href="#"><i class="icon1"></i></a>
					<a href="#"><i class="icon2"></i></a>
					<a href="#"><i class="icon3"></i></a>
				</div>
			</div>
			<div class="col-md-3 footer-grid">
				<h4>My Account</h4>
				<ul>
					<li><a href="{{ route('user_login') }}">Login</a></li>
					<li><a href="{{ route('user_register') }}"> Register </a></li>
				</ul>
			</div>
			<div class="col-md-3 footer-grid">
				<h4>Top Brands</h4>
				<ul>
					{{-- @foreach($manufacturers as $manufacturer)
					<li><a href="#">{{ $manufacturer->manufacturer_name }}</a></li>
					@endforeach --}}
					<li><a href="#">Brands</a></li>
					
				</ul>
			</div>
			<div class="col-md-3 footer-grid foot">
				<h4>Contacts</h4>
				<ul>
					<li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>Dhaka, Bangladesh</li>
					<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+88 01738620241</li>
					<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>esellers@gmail.com</li>
					
				</ul>
			</div>
		<div class="clearfix"> </div>
		</div>
		
	</div>
</div>
<!---footer--->
<!--copy-->
<div class="copy-section">
	<div class="container">
		<div class="text-center">
			<p>&copy; <?php echo date("Y"); ?> eSellers Online Shop . All rights reserved </p>
		</div>
		<div class="clearfix"></div>
	</div>
</div>