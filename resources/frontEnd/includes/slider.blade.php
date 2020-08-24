<div class="banner-w3">
		<div class="demo-1">            
			<div id="example1" class="core-slider core-slider__carousel example_1">
				<div class="core-slider_viewport">

					
						<div class="core-slider_list">
							@foreach($showSliders as $showSlider)
								<div class="core-slider_item">
									<img src="{{ asset($showSlider->slider_image) }}" class="img-responsive" alt="Slider Image">
								</div>
							@endforeach
							 {{-- <div class="core-slider_item">
								 <img src="{{ asset($showSlider->slider_image) }}" class="img-responsive" alt="">
							 </div>
							<div class="core-slider_item">
								  <img src="{{ asset($showSlider->slider_image) }}" class="img-responsive" alt="">
							</div> --}}
							
						</div>
					


				</div>
				<div class="core-slider_nav">
					<div class="core-slider_arrow core-slider_arrow__right"></div>
					<div class="core-slider_arrow core-slider_arrow__left"></div>
				</div>
				<div class="core-slider_control-nav"></div>
			</div>
		</div>
		
		<link href="{{ asset('frontEnd') }}/css/coreSlider.css?v=1.0" rel="stylesheet" type="text/css">
		<script src="{{ asset('frontEnd') }}/js/coreSlider.js"></script>
		<script>
		$('#example1').coreSlider({
		  pauseOnHover: false,
		  interval: 3500,
		  slideshow:true,
		  loop:true,
		  controlNavEnabled: true
		});

		</script>

	</div>	
	<!--banner-->