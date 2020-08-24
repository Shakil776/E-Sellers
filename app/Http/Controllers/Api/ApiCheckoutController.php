<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Shipping;
use App\Order;
use App\OrderDetail;
use App\Payment;
use App\Product;

class ApiCheckoutController extends Controller
{
    // checkout
    public function checkout(Request $request){
        $order = $request->all();

        $orderData = new Order();
        $orderData->customer_id = $order['customer_id'];
        $orderData->order_total = $order['order_total'];
        $orderData->order_status = 'pending';
        $orderData->has_different_shipping = $order['has_different_shipping'];
        $orderData->save();
        $order_id = $orderData->id;

        foreach($order['cart'] as $product){
            $orderDetails = new OrderDetail();
            $orderDetails->order_id = $order_id;
            $orderDetails->product_id = $product['product_id'];
            if($product['size']){
                $orderDetails->size = $product['size'];
            }

            if($product['color']){
                $orderDetails->color = $product['color'];
            }
            $orderDetails->quantity = $product['product_quantity'];
            $orderDetails->save();
        }

        $payment = new Payment();
        $payment->order_id = $order_id;
        $payment->payment_type = $order['payment_type'];
        $payment->payment_status = 'pending';
        $payment->save();

        if(!empty($order["address"])){
            $uAddress = new Shipping();
            $uAddress->order_id = $order_id;
            $uAddress->receiver_name = $order["address"]['receiver_name'];
            $uAddress->phone = $order["address"]['phone'];
            $uAddress->address = $order["address"]['address'];
            $uAddress->city = $order["address"]['city'];
            $uAddress->zip = $order["address"]['zip'];
            $uAddress->country = $order["address"]['country'];
            $uAddress->save();
        }

        if ($orderData && $orderDetails && $payment && $uAddress) {
            return response()->json([
                'status' => 1,
                'message' => 'Success.',
            ], 201);
        } else {
            return response()->json([
                'status' => 0,
                'message' => 'Failed.'
            ], 201);
        }
        
    }
}
