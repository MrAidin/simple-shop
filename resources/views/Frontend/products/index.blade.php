@extends('Frontend.layout.master')
@section('content')
    <div id="container">
        <div class="container">
            <!-- Breadcrumb Start-->
            <ul class="breadcrumb">
                <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="index.html" itemprop="url"><span
                            itemprop="title"><i class="fa fa-home"></i></span></a></li>
                <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="category.html"
                                                                                  itemprop="url"><span itemprop="title">الکترونیکی</span></a>
                </li>
                <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="product.html"
                                                                                  itemprop="url"><span itemprop="title">لپ تاپ ایلین ور</span></a>
                </li>
            </ul>
            <!-- Breadcrumb End-->
            <div class="row">
                <!--Middle Part Start-->
                <div id="content" class="col-sm-9">
                    <div itemscope itemtype="http://schema.org/محصولات">
                        <h1 class="title" itemprop="name">{{$product->title}}</h1>
                        <div class="row product-info">
                            <div class="col-sm-6">
                                <div class="image"><img class="img-responsive" itemprop="image" id="zoom_01"
                                                        src="{{$product->photos[0]->path}}"
                                                        title="{{$product->title}}" alt="{{$product->title}}"
                                                        data-zoom-image="{{$product->photos[0]->path}}"/>
                                </div>
                                <div class="center-block text-center">
                                    <span class="zoom-gallery"><i class="fa fa-search"></i> برای مشاهده گالری روی تصویر کلیک کنید</span></div>
                                <div class="image-additional" id="gallery_01">
                                    @foreach($product->photos as $photo)
                                    <a class="thumbnail" href="#" data-zoom-image="{{$photo->path}}" data-image="{{$photo->path}}" title="{{$product->title}}"><img src="{{$photo->path}}" title="{{$product->title}}" alt="{{$product->title}}"/></a>
                                    @endforeach
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <ul class="list-unstyled description">
                                    <li><b>برند :</b> <a href="#"><span
                                                itemprop="brand">{{$product->brand->title}}</span></a></li>
                                    <li><b>کد محصول :</b> <span itemprop="mpn">{{$product->sku}}</span></li>
                                    <li>
                                        @if ($product->status===1)
                                            <b>وضعیت موجودی :</b> <span class="instock">موجود</span>
                                        @else
                                            <b>وضعیت موجودی :</b> <span class="instock">نا موجود</span>
                                        @endif
                                    </li>
                                </ul>
                                <ul class="price-box">
                                    <li class="price" itemprop="offers" itemscope itemtype="http://schema.org/Offer">
                                        @if($product->discount_price)
                                            <span class="price-old">{{$product->price}} تومان</span>
                                            <span itemprop="price">{{$product->discount_price}} تومان<span itemprop="availability"
                                                                                        content="موجود"></span></span>
                                        @else
                                            <span class="price">{{$product->price}} تومان</span>

                                        @endif


                                    </li>
                                    <li></li>

                                </ul>
                                <div id="product">
                                    <h3 class="subtitle">انتخاب های در دسترس</h3>
                                    <div class="form-group required">
                                        <label class="control-label">رنگ</label>
                                        <select class="form-control" id="input-option200" name="option[200]">
                                            <option value=""> --- لطفا انتخاب کنید ---</option>
                                            <option value="4">مشکی</option>
                                            <option value="3">نقره ای</option>
                                            <option value="1">سبز</option>
                                            <option value="2">آبی</option>
                                        </select>
                                    </div>
                                    <div class="cart">
                                        <div>

                                            <a href="{{route('cart.add',['id'=>$product->id])}}" type="button" id="button-cart" class="btn btn-primary btn-lg">افزودن
                                                به سبد
                                            </a>
                                        </div>

                                    </div>
                                </div>
                                <div class="rating" itemprop="aggregateRating" itemscope
                                     itemtype="http://schema.org/AggregateRating">
                                    <meta itemprop="ratingValue" content="0"/>
                                    <p><span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                                                class="fa fa-star-o fa-stack-1x"></i></span> <span
                                            class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                                                class="fa fa-star-o fa-stack-1x"></i></span> <span
                                            class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                                                class="fa fa-star-o fa-stack-1x"></i></span> <span
                                            class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                                                class="fa fa-star-o fa-stack-1x"></i></span> <span
                                            class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span> <a
                                            onClick="$('a[href=\'#tab-review\']').trigger('click'); return false;"
                                            href=""><span itemprop="reviewCount">1 بررسی</span></a> / <a
                                            onClick="$('a[href=\'#tab-review\']').trigger('click'); return false;"
                                            href="">یک بررسی بنویسید</a></p>
                                </div>
                                <hr>
                                <!-- AddThis Button BEGIN -->

                                <!-- AddThis Button END -->
                            </div>
                        </div>
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab-description" data-toggle="tab">توضیحات</a></li>
                            <li><a href="#tab-specification" data-toggle="tab">مشخصات</a></li>
                            <li><a href="#tab-review" data-toggle="tab">بررسی (2)</a></li>
                        </ul>
                        <div class="tab-content">
                            <div itemprop="description" id="tab-description" class="tab-pane active">
                              {!! $product->description  !!}
                            </div>
                            <div id="tab-specification" class="tab-pane">
                                <div id="tab-specification" class="tab-pane">
                                    <table class="table table-bordered">
                                        <tbody>
                                        @foreach ($product->attributeValues as $attribute)
                                            <tr>
                                                <td>{{$attribute->attributeGroup->title}}</td>
                                                <td>{{$attribute->title}}</td>
                                            </tr>
                                        </tbody>
                                        @endforeach

                                    </table>
                                </div>
                            </div>
                            <div id="tab-review" class="tab-pane">
                                <form class="form-horizontal">
                                    <div id="review">
                                        <div>
                                            <table class="table table-striped table-bordered">
                                                <tbody>
                                                <tr>
                                                    <td style="width: 50%;"><strong><span>هاروی</span></strong></td>
                                                    <td class="text-right"><span>1395/1/20</span></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2"><p>ارائه راهکارها و شرایط سخت تایپ به پایان رسد
                                                            وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی
                                                            سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار
                                                            گیرد.</p>
                                                        <div class="rating"><span class="fa fa-stack"><i
                                                                    class="fa fa-star fa-stack-2x"></i><i
                                                                    class="fa fa-star-o fa-stack-2x"></i></span> <span
                                                                class="fa fa-stack"><i
                                                                    class="fa fa-star fa-stack-2x"></i><i
                                                                    class="fa fa-star-o fa-stack-2x"></i></span> <span
                                                                class="fa fa-stack"><i
                                                                    class="fa fa-star fa-stack-2x"></i><i
                                                                    class="fa fa-star-o fa-stack-2x"></i></span> <span
                                                                class="fa fa-stack"><i
                                                                    class="fa fa-star fa-stack-2x"></i><i
                                                                    class="fa fa-star-o fa-stack-2x"></i></span> <span
                                                                class="fa fa-stack"><i
                                                                    class="fa fa-star fa-stack-2x"></i><i
                                                                    class="fa fa-star-o fa-stack-2x"></i></span></div>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                            <table class="table table-striped table-bordered">
                                                <tbody>
                                                <tr>
                                                    <td style="width: 50%;"><strong><span>اندرسون</span></strong></td>
                                                    <td class="text-right"><span>1395/1/20</span></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2"><p>ارائه راهکارها و شرایط سخت تایپ به پایان رسد
                                                            وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی
                                                            سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار
                                                            گیرد.</p>
                                                        <div class="rating"><span class="fa fa-stack"><i
                                                                    class="fa fa-star fa-stack-2x"></i><i
                                                                    class="fa fa-star-o fa-stack-2x"></i></span> <span
                                                                class="fa fa-stack"><i
                                                                    class="fa fa-star fa-stack-2x"></i><i
                                                                    class="fa fa-star-o fa-stack-2x"></i></span> <span
                                                                class="fa fa-stack"><i
                                                                    class="fa fa-star fa-stack-2x"></i><i
                                                                    class="fa fa-star-o fa-stack-2x"></i></span> <span
                                                                class="fa fa-stack"><i
                                                                    class="fa fa-star-o fa-stack-2x"></i></span> <span
                                                                class="fa fa-stack"><i
                                                                    class="fa fa-star-o fa-stack-2x"></i></span></div>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="text-right"></div>
                                    </div>
                                    <h2>یک بررسی بنویسید</h2>
                                    <div class="form-group required">
                                        <div class="col-sm-12">
                                            <label for="input-name" class="control-label">نام شما</label>
                                            <input type="text" class="form-control" id="input-name" value=""
                                                   name="name">
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <div class="col-sm-12">
                                            <label for="input-review" class="control-label">بررسی شما</label>
                                            <textarea class="form-control" id="input-review" rows="5"
                                                      name="text"></textarea>
                                            <div class="help-block"><span class="text-danger">توجه :</span> HTML
                                                بازگردانی نخواهد شد!
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <div class="col-sm-12">
                                            <label class="control-label">رتبه</label>
                                            &nbsp;&nbsp;&nbsp; بد&nbsp;
                                            <input type="radio" value="1" name="rating">
                                            &nbsp;
                                            <input type="radio" value="2" name="rating">
                                            &nbsp;
                                            <input type="radio" value="3" name="rating">
                                            &nbsp;
                                            <input type="radio" value="4" name="rating">
                                            &nbsp;
                                            <input type="radio" value="5" name="rating">
                                            &nbsp;خوب
                                        </div>
                                    </div>
                                    <div class="buttons">
                                        <div class="pull-right">
                                            <button class="btn btn-primary" id="button-review" type="button">ادامه
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <h3 class="subtitle">محصولات مرتبط</h3>
                        <div class="owl-carousel related_pro">
                            @foreach($relatedProducts as $product)
                                <div class="product-thumb">
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
                <!--Middle Part End -->
                <!--Right Part Start -->

                <!--Right Part End -->
            </div>
        </div>
    </div>
@endsection
@section('script')
    <script type="text/javascript" src="{{asset('js/jquery-2.1.1.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('js/bootstrap/js/bootstrap.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('js/jquery.easing-1.3.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('js/jquery.dcjqaccordion.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('js/jquery.elevateZoom-3.0.8.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('js/swipebox/lib/ios-orientationchange-fix.js')}}"></script>
    <script type="text/javascript" src="{{asset('js/swipebox/src/js/jquery.swipebox.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('js/custom.js')}}"></script>
    <script type="text/javascript">
        // Elevate Zoom for Product Page image
        $("#zoom_01").elevateZoom({
            gallery:'gallery_01',
            cursor: 'pointer',
            galleryActiveClass: 'active',
            imageCrossfade: true,
            zoomWindowFadeIn: 500,
            zoomWindowFadeOut: 500,
            zoomWindowPosition : 11,
            lensFadeIn: 500,
            lensFadeOut: 500,
            loadingIcon: 'image/progress.gif'
        });
        //////pass the images to swipebox
        $("#zoom_01").bind("click", function(e) {
            var ez =   $('#zoom_01').data('elevateZoom');
            $.swipebox(ez.getGalleryList());
            return false;
        });
    </script>

@endsection
