@extends('frontEnd.master')

@section('title')
	Details
@endsection

<style>
    .height {min-height: 250px;}
    .icon {font-size: 47px; color: #5CB85C;}
    .table > tbody > tr > .emptyrow {border-top: none;}
    .table > thead > tr > .emptyrow {border-bottom: none;}
    .table > tbody > tr > .highrow {border-top: 3px solid;}
    .top-gap {margin-top: 30px;}
    .bg-color {background: #000000;}
    .invoice-text {font-size: 20px;font-weight: bold;color: #fff;text-transform: uppercase;letter-spacing: 10px;}
    .tbl-tr-bg{background: #f5f5f5}
</style>

@section('body')
<div class="banner1">
    <div class="container">
        <h3><a href="{{ route('/') }}">Home</a> / <span>History</span></h3>
    </div>
</div>

<div class="content">
    <div class="row">
        <div class="col-md-12">

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="text-center text-success">Order Details Info</h4>
                </div>

                <div class="panel-body">
                    <table width="100%" class="table table-striped table-bordered table-hover">

                        <tr>
                            <th>Order No</th>
                            <td>000{{ $order->id }}</td>
                        </tr>
                        <tr>
                            <th>Order Total</th>
                            <td>{{ $order->order_total }} TK.</td>
                        </tr>
                        <tr>
                            <th>Order Status</th>
                            <td>{{ $order->order_status }}</td>
                        </tr>
                        <tr>
                            <th>Order Date</th>
                            <td>{{ $order->created_at }}</td>
                        </tr>

                    </table>
                </div>

             </div>
        </div>
    </div>
  
    <div class="row">
        <div class="col-md-12">

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="text-center text-success">Payment info for this Order</h4>
                </div>

                <div class="panel-body">
                    <table width="100%" class="table table-striped table-bordered table-hover">

                            <tr>
                                <th>Payment Type</th>
                                <td>{{ $payment->payment_type }}</td>
                            </tr>
                            <tr>
                                <th>Payment Status</th>
                                <td>{{ $payment->payment_status }}</td>
                            </tr>

                    </table>
                </div>

            </div>
        </div>
    </div>

    {{-- <div class="row">
        <div class="col-md-12">

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="text-center text-success">Product Info for this Order</h4>
                </div>

                <div class="panel-body">
                    <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables">
                        <thead>
                            <tr>
                                <th>Sl No.</th>
                                <th>Product ID</th>
                                <th>Product Name</th>
                                <th>Product Price</th>
                                <th>Product Quantity</th>
                                <th>Total Price</th>
                            </tr>
                        </thead>

                        <tbody>
                            @php($i=1)
                            @foreach($orderDetails as $orderDetail)
                                <tr>
                                    <td>{{ $i++ }}</td>
                                    <td>{{ $orderDetail->product_id }}</td>
                                    <td>{{ $orderDetail->product_name }}</td>
                                    <td>TK. {{ $orderDetail->product_price }}</td>
                                    <td>{{ $orderDetail->product_quantity }}</td>
                                    <td>TK. {{ $orderDetail->product_price * $orderDetail->product_quantity }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div> --}}

    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="text-center"><strong>Order Summary</strong></h3>
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-condensed">
                            <thead>
                                <tr>
                                    <td width="5%"><strong>#</strong></td>
                                    <td width="45%"><strong>Product Name</strong></td>
                                    <td width="20%"><strong>Price </strong></td>
                                    <td class="text-center" width="10%"><strong>Quantity </strong></td>
                                    <td class="text-right" width="20%"><strong>Total Price </strong></td>
                                </tr>
                            </thead>
                            <tbody>
                                @php($i = 1)
                                @php($sum = 0)
                                @foreach($orderDetails as $orderDetail)
                                <tr>
                                    <td>{{ $i++ }}</td>
                                    <td>{{ $orderDetail->product_name }}</td>
                                    <td>TK. {{ $orderDetail->product_price }}</td>
                                    <td class="text-center">{{ $orderDetail->product_quantity }}</td>
                                    <td class="text-right">TK. {{ $total = $orderDetail->product_price * $orderDetail->product_quantity }}</td>
                                </tr>
                                @php($sum = $sum + $total)
                                @endforeach
    
    
                                
                                <tr>
                                    <td class="highrow"></td>
                                    <td class="highrow"></td>
                                    <td class="highrow"></td>
                                    <td class="highrow"><strong>Sub-Total</strong></td>
                                    <td class="highrow text-right">TK. {{ $sum }}</td>
                                </tr>
                                <tr>
                                    <td class="emptyrow"></td>
                                    <td class="emptyrow"></td>
                                    <td class="emptyrow"></td>
                                    <td class="emptyrow text-center"><strong>Vat</strong></td>
                                    <td class="emptyrow text-right">TK. {{ $vat=0 }}</td>
                                </tr>
                                <tr>
                                    <td class="emptyrow"></td>
                                    <td class="emptyrow"></td>
                                    <td class="emptyrow"></td>
                                    <td class="emptyrow text-center"><strong>Total</strong></td>
                                    <td class="emptyrow text-right">TK. {{ $sum + $vat }}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

    
            </div>
        </div>
    </div>
    
</div>
@endsection
