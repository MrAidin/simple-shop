<?php

use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\Backend\AttributeGroupController;
use App\Http\Controllers\Backend\AttributeValueController;
use App\Http\Controllers\Backend\BrandController;
use App\Http\Controllers\Backend\CategoryController;
use App\Http\Controllers\Backend\OrderController;
use App\Http\Controllers\Frontend\FrontCouponController;
use App\Http\Controllers\Backend\CouponController;
use App\Http\Controllers\Backend\MainController;
use App\Http\Controllers\Backend\PhotoController;
use App\Http\Controllers\Backend\ProductController;
use App\Http\Controllers\Frontend\CartController;
use App\Http\Controllers\Frontend\HomeController;
use App\Http\Controllers\Frontend\UserController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


//Route::group(['middleware' => 'admin'], function () {
Route::prefix('api')->group(function () {
    Route::get('/categories', [CategoryController::class, 'apiIndex']);
    Route::post('/categories/attributes', [CategoryController::class, 'apiIndexAttribute']);
    Route::get('/cities/{provinceId}', [RegisterController::class, 'getAllCities']);
    Route::get('/provinces', [RegisterController::class, 'getAllProvince']);
    Route::get('/products/{id}', [\App\Http\Controllers\Frontend\ProductController::class, 'apiProducts']);
    Route::get('/sort-products/{id}/{sort}/{paginate}', [\App\Http\Controllers\Frontend\ProductController::class, 'getSortedProduct']);
    Route::get('/category-attribute/{id}', [\App\Http\Controllers\Frontend\ProductController::class, 'getCategoryAttributes']);
    Route::get('/filter-products/{id}/{sort}/{paginate}/{attributes}', [\App\Http\Controllers\Frontend\ProductController::class, 'apiGetFilterProducts']);
});

Route::prefix('administrator')->group(function () {
    Route::get('/', [MainController::class, 'masterPage']);
    Route::resource('categories', CategoryController::class);
    Route::get('/categories/{id}/settings', [CategoryController::class, 'indexSetting'])->name('categories.indexSetting');
    Route::post('/categories/{id}/settings', [CategoryController::class, 'saveSetting'])->name('categories.saveSetting');
    Route::resource('attributes-group', AttributeGroupController::class);
    Route::resource('attributes-value', AttributeValueController ::class);
    Route::resource('brands', BrandController ::class);
    Route::resource('photos', PhotoController ::class);
    Route::post('photos/upload', [PhotoController ::class, 'upload'])->name('photos.upload');
    Route::resource('products', ProductController ::class);
    Route::resource('coupons', CouponController ::class);
    Route::get('/orders/list/{id}',[\App\Http\Controllers\Backend\OrderController::class,'getOrderLists'])->name('orders.lists');
    Route::get('orders', [OrderController ::class,'index'])->name('orders.index');

});

//});

Auth::routes();


//cart Route
Route::resource('/', HomeController::class);
Route::get('/add-to-cart/{id}', [CartController ::class, 'addToCart'])->name('cart.add');
Route::post('/remove-item/{id}', [CartController ::class, 'removeItem'])->name('cart.remove');
Route::get('/cart', [CartController ::class, 'getCart'])->name('cart.cart');
Route::get('products/{slug}', [\App\Http\Controllers\Frontend\ProductController::class, 'getProduct'])->name('product.single');
Route::get('category/{id}/{page?}', [\App\Http\Controllers\Frontend\ProductController::class, 'getProductByCategory'])->name('category.index');

//end cart

Route::post('/register', [UserController ::class, 'register'])->name('user.register');
//middleware
Route::group(['middleware' => 'auth'], function () {
    Route::get('/profile', [UserController::class, 'profile'])->name('user.profile');
    Route::post('/coupon', [FrontCouponController::class, 'addCoupon'])->name('coupon.add');
    Route::get('/orders', [\App\Http\Controllers\Frontend\OrderController::class, 'index'])->name('profile.orders');
    Route::get('/orders/list/{id}',[\App\Http\Controllers\Frontend\OrderController::class,'getOrderLists'])->name('profile.orders.lists');
    Route::get('/order-verify',[\App\Http\Controllers\Frontend\OrderController::class,'verify'])->name('order.verify');
    Route::get('/payment-verify/{id}',[\App\Http\Controllers\Frontend\PaymentController::class,'verify'])->name('payment.verify');
});
//end middleware
