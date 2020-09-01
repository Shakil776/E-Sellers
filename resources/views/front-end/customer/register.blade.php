@extends('front-end.master')

@section('title', 'Registration')

@section('main-content')

    {{-- message --}}
     @if(Session::has('success'))
        <div class="alert alert-success alert-dismissible fade show text-center" role="alert">
          <strong>Success! </strong>  {{ Session::get('success') }}
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
    @endif

    @if(Session::has('error'))
        <div class="alert alert-danger alert-dismissible fade show text-center" role="alert">
          <strong>Ooops! </strong>  {{ Session::get('error') }}
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
    @endif

    {{-- laravel validation error show message --}}
    @if ($errors->any())
        <div class="alert alert-danger alert-dismissible fade show text-center" role="alert">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
    @endif


        <!-- breadcrumb start -->
    <div class="breadcrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="page-title">
                        <h2>create account</h2>
                    </div>
                </div>
                <div class="col-sm-6">
                    <nav aria-label="breadcrumb" class="theme-breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ url('/')}}">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Register</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb End -->


    <!--section start-->
    <section class="register-page section-b-space">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h3>create account</h3>
                    <div class="theme-card">
                        <div class="card-header mb-4">
                            <h4 class="text-center">Personal Information</h4>
                        </div>
                        
                        <form class="theme-form" action="{{ url('save-register') }}" method="post">
                            @csrf
                            <div class="form-row">
                                <div class="col-md-6">
                                    <label for="name">Name <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="name" id="name" placeholder="Name" required="" autocomplete="off">
                                    <span class="text-danger">{{ $errors->has('name') ? $errors->first('name') : ' ' }}</span>
                                </div>
                                <div class="col-md-6">
                                    <label for="email">Email <span class="text-danger">*</span></label>
                                    <input type="email" class="form-control" name="email" id="email" placeholder="Email" required="" autocomplete="off">
                                    <span class="text-danger">{{ $errors->has('email') ? $errors->first('email') : ' ' }}</span>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="col-md-6">
                                    <label for="mobile">Mobile <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="mobile" id="mobile" placeholder="Mobile" required="" autocomplete="off">
                                    <span class="text-danger">{{ $errors->has('mobile') ? $errors->first('mobile') : ' ' }}</span>
                                </div>
                                <div class="col-md-6">
                                    <label for="password">Password <span class="text-danger">*</span></label>
                                    <input type="password" class="form-control" name="password" id="password" placeholder="Enter your password" required="" autocomplete="off">
                                    <span class="text-danger">{{ $errors->has('password') ? $errors->first('password') : ' ' }}</span>
                                </div>
                               
                            </div>

                            <div class="card-header mb-4">
                                <h4 class="text-center">Address</h4>
                            </div>

                            <div class="form-row">
                                <div class="col-md-6">
                                    <label for="state">Region/State</label>
                                    <input type="text" class="form-control" name="state" id="state" placeholder="Region/State" autocomplete="off">
                                </div>

                               <div class="col-md-6">
                                    <label for="city">Town/City</label>
                                    <input type="text" class="form-control" name="city" id="city" placeholder="Town/City" autocomplete="off">
                                </div>
                                
                            </div>

                            <div class="form-row">
                                <div class="col-md-12">
                                    <label for="address">House/Flat Address</label>
                                    <textarea class="form-control" name="address" id="address" placeholder="House/Flat Address" autocomplete="off" rows="5"></textarea>
                                    
                                </div>

                            </div>

                            <button type="submit" class="btn btn-solid mt-1">Register</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Section ends-->



@endsection


