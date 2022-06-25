@extends('Frontend.layout.master')
@section('content')
    <div class="row">
        <!--Middle Part Start-->
        <div id="content" class="col-xs-12">
            <!-- Slideshow Start-->
            <div class="slideshow single-slider owl-carousel">
                <div class="item"><a href="#">
                        <img class="img-responsive" src="image/slider/banner-2.jpg" alt="banner 2"/>
                    </a>
                </div>
                <div class="item"><a href="#">
                        <img class="img-responsive" src="image/slider/banner-1.jpg" alt="banner 1"/>
                    </a>
                </div>
            </div>
            <!-- Slideshow End-->
            <!-- Banner Start-->

            <!-- Banner End-->
            <!-- محصولات Tab Start -->
            <div id="product-tab" class="product-tab">
                <ul id="tabs" class="tabs">
                    <li><a href="#tab-latest">جدیدترین</a></li>

                </ul>
                <div id="tab-latest" class="tab_content">
                    <div class="owl-carousel product_carousel_tab">
                        @foreach($latestProduct as $product)
                            <div class="product-thumb clearfix">
                                <div class="image">
                                    <a href="{{route('product.single',['slug'=>$product->slug])}}">
                                        <img src="{{$product->photos[0]->path}}" alt="{{$product->title}}" title="{{$product->title}}" class="img-responsive"/>
                                    </a>
                                </div>
                                <div class="caption">
                                    <h4><a href="{{route('product.single',['slug'=>$product->slug])}}">{{$product->title}}</a></h4>
                                    @if ($product->discount_price)
                                        <p class="price">
                                            <span class="price-new">{{$product->discount_price}} تومان</span>
                                            <span class="price-old">{{$product->price}} تومان</span>
                                            <span class="saving">{{round(abs(($product->price - $product->discount_price)/$product->price * 100))}}%</span>
                                        </p>
                                    @else
                                        <p class="price">
                                            {{$product->price}} تومان
                                        </p>
                                    @endif

                                </div>
                                <div class="button-group">
                                    <a class="btn-primary" href="{{route('cart.add',['id'=>$product->id])}}"><span>افزودن به سبد</span></a>
                                    <div class="add-to-links">
                                        <button type="button" data-toggle="tooltip" title="افزودن به علاقه مندی ها"
                                                onClick=""><i class="fa fa-heart"></i></button>
                                        <button type="button" data-toggle="tooltip" title="مقایسه این محصول" onClick="">
                                            <i class="fa fa-exchange"></i></button>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>    <!-- محصولات Tab Start -->
            <!-- Banner Start -->
            <div class="marketshop-banner">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <a href="#"><img src="image/banner/hey.jpg" alt="2 Block Banner" title="مارکت شاپ"/>
                        </a>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12"><a href="#">
                            <img src="image/banner/hey.jpg" alt="2 Block Banner 1" title="مارکت شاپ"/>
                        </a>
                    </div>
                </div>
            </div>
            <!-- Banner End -->
            <!-- دسته ها محصولات Slider Start-->
            <div class="category-module" id="latest_category">
                <h3 class="subtitle">مد و زیبایی - <a class="viewall" href="http://shop.test:8080/category/1">نمایش همه</a></h3>
                <div class="category-module-content">
                    <ul id="sub-cat" class="tabs">
                    </ul>
                    <div id="tab-cat1" class="tab_content">
                        <div class="owl-carousel latest_category_tabs">
                            @foreach($latestProduct as $product)
                                <div class="product-thumb clearfix">
                                    <div class="image">
                                        <a href="{{route('product.single',['slug'=>$product->slug])}}">
                                            <img src="{{$product->photos[0]->path}}" alt="{{$product->title}}" title="{{$product->title}}" class="img-responsive"/>
                                        </a>
                                    </div>
                                    <div class="caption">
                                        <h4><a href="{{route('product.single',['slug'=>$product->slug])}}">{{$product->title}}</a></h4>
                                        @if ($product->discount_price)
                                            <p class="price">
                                                <span class="price-new">{{$product->discount_price}} تومان</span>
                                                <span class="price-old">{{$product->price}} تومان</span>
                                                <span class="saving">{{round(abs(($product->price - $product->discount_price)/$product->price * 100))}}%</span>
                                            </p>
                                        @else
                                            <p class="price">
                                                {{$product->price}} تومان
                                            </p>
                                        @endif

                                    </div>
                                    <div class="button-group">
                                        <a class="btn-primary" href="{{route('cart.add',['id'=>$product->id])}}"><span>افزودن به سبد</span></a>
                                        <div class="add-to-links">
                                            <button type="button" data-toggle="tooltip" title="افزودن به علاقه مندی ها"
                                                    onClick=""><i class="fa fa-heart"></i></button>
                                            <button type="button" data-toggle="tooltip" title="مقایسه این محصول" onClick="">
                                                <i class="fa fa-exchange"></i></button>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>

                </div>
            </div>
            <!-- دسته ها محصولات Slider End-->

            <!-- دسته ها محصولات Slider Start -->
            <h3 class="subtitle">البسه - <a class="viewall" href="http://shop.test:8080/category/1">نمایش همه</a></h3>
            <div class="owl-carousel latest_category_carousel">
                @foreach($latestProduct as $product)
                    <div class="product-thumb clearfix">
                        <div class="image">
                            <a href="{{route('product.single',['slug'=>$product->slug])}}">
                                <img src="{{$product->photos[0]->path}}" alt="{{$product->title}}" title="{{$product->title}}" class="img-responsive"/>
                            </a>
                        </div>
                        <div class="caption">
                            <h4><a href="{{route('product.single',['slug'=>$product->slug])}}">{{$product->title}}</a></h4>
                            @if ($product->discount_price)
                                <p class="price">
                                    <span class="price-new">{{$product->discount_price}} تومان</span>
                                    <span class="price-old">{{$product->price}} تومان</span>
                                    <span class="saving">{{round(abs(($product->price - $product->discount_price)/$product->price * 100))}}%</span>
                                </p>
                            @else
                                <p class="price">
                                    {{$product->price}} تومان
                                </p>
                            @endif

                        </div>
                        <div class="button-group">
                            <a class="btn-primary" href="{{route('cart.add',['id'=>$product->id])}}"><span>افزودن به سبد</span></a>
                            <div class="add-to-links">
                                <button type="button" data-toggle="tooltip" title="افزودن به علاقه مندی ها"
                                        onClick=""><i class="fa fa-heart"></i></button>
                                <button type="button" data-toggle="tooltip" title="مقایسه این محصول" onClick="">
                                    <i class="fa fa-exchange"></i></button>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
            <!-- دسته ها محصولات Slider End -->

            <!-- برند Logo Carousel Start-->
            <div id="carousel" class="owl-carousel nxt">
                @foreach($brands as $brand)
                    <div class="item text-center"><a href="#"><img src="{{$brand->photo->path}}" alt="پالم" class="img-responsive"/></a></div>
                @endforeach

            </div>
            <!-- برند Logo Carousel End -->
        </div>
        <!--Middle Part End-->
    </div>

@endsection
