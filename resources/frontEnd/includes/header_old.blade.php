<?php
  use App\Http\Controllers\Controller;
  $mainCategories = Controller::mainCategories();
?>

<style>
  
.navbar-brand>img {
  padding-top: 11px;
  width: 130px;
  margin-left: 60px;
}
.navbar-brand {
  height: auto;
  margin: 0;
  padding: 0;
  margin-right: 20px;
}
.navbar-default{
  color: #fff;
  background-color: #2F4F4F;
  border-color: #000000;
}
.navbar-default .navbar-nav > li > a{
  color:#fff;
}
.navbar-default .navbar-nav > .dropdown > a .caret{
  border-top-color: #fff;
  border-bottom-color: #fff;
}
.navbar-default .navbar-brand{
  color:#fff;
}
.menu-large {
  position: static !important;
}
.megamenu{
  padding: 20px 0px;
  width:100%;
}
.megamenu> li > ul {
  padding: 0;
  margin: 0;
}
.megamenu> li > ul > li {
  list-style: none;
}
.megamenu> li > ul > li > a {
  display: block;
  padding: 3px 20px;
  clear: both;
  font-weight: normal;
  line-height: 1.428571429;
  color: #333333;
  white-space: normal;
}
.megamenu> li ul > li > a:hover,
.megamenu> li ul > li > a:focus {
  text-decoration: none;
  color: #262626;
  background-color: #f5f5f5;
}
.megamenu.disabled > a,
.megamenu.disabled > a:hover,
.megamenu.disabled > a:focus {
  color: #999999;
}
.navbar-default .navbar-nav>li>a:focus, .navbar-default .navbar-nav>li>a:hover {
  color: #00A7E8;
}
.megamenu.disabled > a:hover,
.megamenu.disabled > a:focus {
  text-decoration: none;
  background-color: transparent;
  background-image: none;
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
  cursor: not-allowed;
}
.megamenu.dropdown-header {
  color: #428bca;
  font-size: 18px;
}

/*New update by front-end*/
.row-element{
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    margin:0;
    padding: 0;
}

.mega-menu-option{
  -ms-flex: 0 0 25%;
  flex: 0 0 25%;
  max-width: 25%;
  margin-bottom: 1.5rem!important
}
.mega-menu-option ul{
  list-style: none;
  margin-left: 30px;
}
.mega-menu-option ul li{
  text-align: left;
}
.dropdown-header {
    display: block;
    padding: 2px 0px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #999;
    font-weight: bold;
    /* border-bottom: 1px solid #ddd; */
    margin-bottom: 5px;
}
.navbar-default {
    color: #fff;
    background-color: #c21300;
    border-color: #c21300;
    margin-top: 15px;
    margin-bottom: 0px;
}
.navbar-default .navbar-collapse, .navbar-default .navbar-form {
    border: none;
    margin-top: 0em;
}
.header-right2{
  margin-top: 2.6em;
}
.top-center{
  width: 80%;
  float: left;
}
.top-center input.form-control {
  width: 55%;
  margin: 27px auto;
  display: block;
  border: 1px solid #C21300;
  color: #000;
}

.top-center input.form-control::-webkit-input-placeholder {
  color: #000;
}
.top-center input.form-control::-moz-placeholder{
  color: #000;
}


@media (max-width: 768px) {
  .megamenu{
    margin-left: 0 ;
    margin-right: 0 ;
  }
  .megamenu> li {
    margin-bottom: 30px;
  }
  .megamenu> li:last-child {
    margin-bottom: 0;
  }
  .megamenu.dropdown-header {
    padding: 3px 15px !important;
  }
  .navbar-nav .open .dropdown-menu .dropdown-header{
  color:#fff;
  }
  .row-element{
    display: block;
  }
  .mega-menu-option{
    flex: none;
  }
  .header-middle .top-left{
      float: left;
  }
  .header-middle .top-center {
      width: 56%;
      float: left;
  }
  .header-middle .top-center input.form-control {
      width: 100%;
  }
  .header-middle .top-right{
      float: right;
  }
  .header-right2 {
      margin-top: 2em;
  }
}

</style>

<div class="header">
  <div class="header-top">
    <div class="container">
       <div class="top-left">
        <span> Help  <i class="glyphicon glyphicon-phone" aria-hidden="true"></i> +88-01738620241</span>
      </div>
      <div class="top-right">
      <ul>
        @if(Session::get('customerId'))
          <li><a href="{{ route('customer_profile') }}">Profile</a></li>
          <li><a href="{{ route('change_password') }}">Change Password</a></li>
          <li><a href="{{ route('order_history') }}">Order History</a></li>
          <li><a href="#" onclick="document.getElementById('customerLogoutFormID').submit();">Logout</a></li>
          <form action="{{ route('customer_logout') }}" method="POST" id="customerLogoutFormID">
            @csrf
          </form>
        @else
          <li><a href="{{ route('user_login') }}">Login</a></li>
          <li><a href="{{ route('user_register') }}"> Register </a></li>
        @endif
        
      </ul>
      </div>
      <div class="clearfix"></div>
    </div>
  </div>

  <div class="header-middle">
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <div class="container-fluid">
            <div class="top-left">
              <div class="logo-nav-left">
                <a href="{{ route('/') }}"><img src="{{ asset('frontEnd/images/logo.png') }}" alt=""></a>
              </div>
            </div>

            <div class="top-center">

              <form action="{{ route('search') }}" method="post">
                @csrf

                <input type="text" name="search-key" id="search-key" class="form-control" placeholder="Search Your Product" autocomplete="off">

                <input type="submit" name="search" value="Search" class="btn btn-success form-control">
              </form>
              

            </div>

            <div class="top-right">
              <div class="header-right2">
                <div class="cart box_1" >
                  <a href=" {{ route('show-cart') }}">
                    <h3> 
                      <div class="total">
                        <span>{{ $cart_qty }}&nbsp;</span>
                      </div>
                      <img src="{{ asset('frontEnd') }}/images/bag.png" alt="" class="items" />
                    </h3>
                  </a>
                  <div class="clearfix"> </div>
                </div>  
              </div>
            </div>
      <div class="clearfix"></div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="heder-bottom">
    <div class="container">

          {{-- here start--}}

      <div class="navbar navbar-default navbar-static-top">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
          </div>
          <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
            @foreach($mainCategories as $cat)
                <li class="dropdown menu-large">
                   <a href="{{ asset('/product-category/'.$cat->url) }}">{{ $cat->category_name }} <b class="caret"></b></a>          
                   <ul class="dropdown-menu megamenu">
                    <div class="row-element">
                      @foreach($cat->categories as $subcat)
                      <li class="mega-menu-option">
                         <ul>
                            <li class="dropdown-header"><a href="{{ asset('/product-category/'.$subcat->url) }}">{{ $subcat->category_name }}</a></li>

                            @foreach($subcat->subCategories as $subsubcat)
                            <li><a href="{{ asset('/product-category/'.$subsubcat->url) }}">{{ $subsubcat->category_name }}</a></li>
                            @endforeach
                         </ul>
                      </li>
                      @endforeach
                      </div>
                   </ul>
                </li> 
            @endforeach
              
            </ul>
          </div>  
        </div>
      </div>

          {{-- here end--}}

        <div class="clearfix"> </div>
      </div>
    </div>
  </div>
</div>


<script>
  $(document).ready(function(){

      $(".dropdown").hover(function(){ 
        $('.dropdown-menu', this).fadeIn("fast");
          },
          function(){ 
            $('.dropdown-menu', this).fadeOut("fast");
      });

  });
</script>