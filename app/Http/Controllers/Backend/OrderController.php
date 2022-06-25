<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Order;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    public function index()
    {
        $orders = Order::orderBy('created_at','DESC')->paginate(10);
        return view('Admin.orders.index', compact(['orders']));
    }

    public function getOrderLists($id)
    {
        $order = Order::with(['user.addresses.province','user.addresses.city', 'products.photos'])->whereId($id)->first();
        return view('Admin.orders.lists', compact('order'));
    }
}
