<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\Payment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class OrderController extends Controller
{
    public function verify()
    {
        $cart = Session::has('cart') ? Session::get('cart') : null;
        if (!$cart) {
            Session::flash('warning', 'سبد خرید شما خالیست');
            return redirect('/');
        }



        $productsID = [];
        foreach ($cart->items as $product) {
            $productsID[$product['item']->id] = ['qty' => $product['qty']];
        }
        $order = new Order();
        $order->amount = $cart->totalPrice;
        $order->user_id = Auth::user()->id;
        $order->status = 0;
        $order->save();

        $order->products()->sync($productsID);

        $payment = new Payment($order->amount,$order->id);
        $result = $payment->doPayment();
        if ($result->Status == 100) {
            return redirect()->to('https://sandbox.zarinpal.com/pg/StartPay/' . $result->Authority);
        } else {
            echo 'Error' . $result->Status;
        }


    }


    public function index()
    {
        $orders = Order::orderBy('created_at','DESC')->paginate(10);
        return view('Frontend.profile.orders', compact(['orders']));
    }

    public function getOrderLists($id)
    {
        $order = Order::with(['user','products.photos'])->whereId($id)->first();
        return view('Frontend.profile.lists', compact(['order']));
    }



}
