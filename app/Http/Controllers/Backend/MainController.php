<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Order;
use App\Models\Product;
use App\Models\User;
use App\Models\Province;
use Illuminate\Http\Request;

class MainController extends Controller
{
    public function masterPage()
    {
        $order = Order::count();
        $user = User::count();
        $category = Category::count();
        $product = Product::count();
        return view('Admin.main.index',compact(['order','user','category','product']));
    }
}
