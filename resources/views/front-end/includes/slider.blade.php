<section class="p-0">
        <div class="slide-1 home-slider">

            @foreach($showSliders as $showSlider)
            <div>
                <div class="home  text-center">
                    {{-- <img src="{{ asset('frontEnd')}}/images/home-banner/1.jpg" alt="" class="bg-img blur-up lazyload"> --}}
                    <img src="{{ asset($showSlider->slider_image) }}" alt="" class="bg-img blur-up lazyload">
                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <div class="slider-contain">
                                    <div>
                                        <h4>welcome to E-sellers</h4>
                                        <h1>Buy Clothes & Home Applience Easily Form Anywhere</h1>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach

        </div>
    </section>