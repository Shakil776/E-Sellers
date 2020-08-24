<style type="text/css">
.wish-icon {
    color: red;
    cursor: pointer;
}
.wishlist-btn-remove {
    padding: 2px 5px;
    font-size: 15px;
    text-align: center;
    cursor: pointer;
    border: 1px solid transparent;
    border-radius: 0px;
}
.wishlist-btn-remove:hover {
    background: #000;
}
</style>
@extends('frontEnd.master')

@section('title')
    Wishlist
@endsection

@section('body')

    <div class="banner1">
        <div class="container">
            <h3><a href="{{ route('/') }}">Home</a> / <span>Wishlist</span></h3>
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

        
        <!--new-arrivals-->
            <div class="ban-bottom-w3l">
                <div class="container">
                            <h2 class="tittle">Wishlist Products</h2>

                    <div class="arrivals-grids">

                    {{-- @if (count($searchProducts) > 0) --}}

                        @foreach($customer_wishlists as $wishlist)

                            <div class="col-md-3 arrival-grid simpleCart_shelfItem">

                                <div class="pull-right">
                                    <form action="{{ route('wishlist-remove') }}" method="post">
                                        @csrf
                                        <input type="hidden" name="wishlist_id" value="{{ $wishlist->id }}">
                                        <button class="wishlist-btn-remove bg-danger" title="Remove">
                                            <i class="fa fa-times wish-icon"></i>
                                        </button>
                                    </form>
                                </div>
                               
                                <div class="grid-arr">
                                    <div  class="grid-arrival">
                                        <figure>        
                                            <a href="{{ asset('/product-details/'.$wishlist->product_id) }}" class="new-gri">
                                                <div class="grid-img">
                                                    <img  src="{{ asset($wishlist->product_image) }}" class="img-responsive" alt="">
                                                </div>
                                                <div class="grid-img">
                                                    <img  src="{{ asset($wishlist->product_image) }}" class="img-responsive"  alt="">
                                                </div>          
                                            </a>        
                                        </figure>   
                                    </div>
                                    
                                    <div class="block" style="font-size: 20px;text-align: center;">
                                        <?php $rating = round($wishlist->rating); ?>

                                        @for ($i = 0; $i < 5; ++$i)
                                            <i class="fa fa-star{{ $rating<=$i?'-o':'' }}" aria-hidden="true" style="color: red;"></i>
                                        @endfor

                                    </div>

                                    <div class="women" style="text-align: center;">
                                        <h6><a href="{{ asset('/product-details/'.$wishlist->product_id) }}">{{ $wishlist->product_name }}</a></h6>

                                        <p ><em class="item_price">TK. {{ $wishlist->product_price }}</em></p>
                                        <a href="{{ asset('/product-details/'.$wishlist->product_id) }}" data-text="Add To Cart" class="my-cart-b item_add">View Details</a>
                                    </div>

                                </div>
                            </div>
                        @endforeach
                        {{-- {{ $searchProducts->links() }} --}}
                    {{-- @else
                        <h2>No Result Found. Try to Search Again!</h2>
                    @endif --}}
                        
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        <!--new-arrivals-->
    </div>
@endsection