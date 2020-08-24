@extends('frontEnd.master')

@section('title')
    Search Result
@endsection

@section('body')
    
        <!--content-->
    <div class="content">
        
        <!--new-arrivals-->
            <div class="ban-bottom-w3l">
                <div class="container">
                    <h2 class="tittle">Searched Result for- <span class="badge badge-primary"> {{ $keyword }}  </span></h2>


                    <div class="arrivals-grids">

                    @if (count($searchProducts) > 0)

                        @foreach($searchProducts as $searchProduct)

                            <div class="col-md-3 arrival-grid simpleCart_shelfItem">
                                <div class="grid-arr">
                                    <div  class="grid-arrival">
                                        <figure>        
                                            <a href="{{ asset('/product-details/'.$searchProduct->id) }}" class="new-gri">
                                                <div class="grid-img">
                                                    <img  src="{{ asset($searchProduct->product_image) }}" class="img-responsive" alt="">
                                                </div>
                                                <div class="grid-img">
                                                    <img  src="{{ asset($searchProduct->product_image) }}" class="img-responsive"  alt="">
                                                </div>          
                                            </a>        
                                        </figure>   
                                    </div>
                                    <div class="ribben">
                                        <p>NEW</p>
                                    </div>
                                    
                                    <div class="block" style="font-size: 20px;text-align: center;">
                                        <?php $rating = round($searchProduct->rating); ?>

                                        @for ($i = 0; $i < 5; ++$i)
                                            <i class="fa fa-star{{ $rating<=$i?'-o':'' }}" aria-hidden="true" style="color: red;"></i>
                                        @endfor

                                    </div>
                                    <div class="women" style="text-align: center;">
                                        <h6><a href="{{ asset('/product-details/'.$searchProduct->id) }}">{{ $searchProduct->product_name }}</a></h6>

                                        <p ><em class="item_price">TK. {{ $searchProduct->product_price }}</em></p>
                                        <a href="{{ asset('/product-details/'.$searchProduct->id) }}" data-text="Add To Cart" class="my-cart-b item_add">View Details</a>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                        {{ $searchProducts->links() }}
                    @else
                        <h2>No Result Found. Try to Search Again!</h2>
                    @endif
                        
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        <!--new-arrivals-->
    </div>
@endsection