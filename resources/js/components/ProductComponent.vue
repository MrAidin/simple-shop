<template>
    <div>

        <!--Left Part Start -->
        <aside id="column-left" class="col-sm-3 hidden-xs">
            <h3 class="subtitle">فیلتر محصولات</h3>
            <div class="box-category">

                <div class="form-group" v-for="(attributeGroup,index) in attributeGroups">
                    <label>ویژگی {{ attributeGroup.title }}</label>
                    <select class="form-control" @change="addAttribute($event,index)">
                        <option>انتخاب کنید...</option>
                        <option v-for="attributeValue in attributeGroup.attributes_value" :value="attributeValue.id">
                            {{ attributeValue.title }}
                        </option>
                    </select>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-warning" @click="getFilterProduct()">اعمال فیلتر</button>
                </div>

            </div>
            <h3 class="subtitle">دسته ها</h3>
            <div class="box-category">
                <ul id="cat_accordion">
                    <li><a href="#">مد و زیبایی</a> <span class="down"></span>
                        <ul>
                            <li><a href="#">آقایان</a> <span class="down"></span>
                                <ul>
                                    <li><a href="#">زیردسته ها</a></li>
                                    <li><a href="#">زیردسته ها</a></li>
                                    <li><a href="#">زیردسته ها</a></li>
                                    <li><a href="#">زیردسته ها</a></li>
                                    <li><a href="#">زیردسته جدید</a></li>
                                </ul>
                            </li>
                            <li><a href="#">بانوان</a></li>
                            <li><a href="#">دخترانه</a> <span class="down"></span>
                                <ul>
                                    <li><a href="#">زیردسته ها</a></li>
                                    <li><a href="#">زیردسته جدید</a></li>
                                    <li><a href="#">زیردسته جدید</a></li>
                                </ul>
                            </li>
                            <li><a href="#">پسرانه</a></li>
                            <li><a href="#">نوزاد</a></li>
                            <li><a href="#">لوازم</a> <span class="down"></span>
                                <ul>
                                    <li><a href="#">زیردسته های جدید</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li><a class="active" href="#">الکترونیکی</a> <span class="down"></span>
                        <ul style="display:block;">
                            <li><a href="#">لپ تاپ</a> <span class="down"></span>
                                <ul>
                                    <li><a href="#">زیردسته های جدید</a></li>
                                    <li><a href="#">زیردسته های جدید</a></li>
                                    <li><a href="#">زیردسته جدید</a></li>
                                </ul>
                            </li>
                            <li><a href="#">رومیزی</a> <span class="down"></span>
                                <ul>
                                    <li><a href="#">زیردسته های جدید</a></li>
                                    <li><a href="#">زیردسته جدید</a></li>
                                    <li><a href="#">زیردسته جدید</a></li>
                                </ul>
                            </li>
                            <li><a href="#">دوربین</a> <span class="down"></span>
                                <ul>
                                    <li><a href="#">زیردسته های جدید</a></li>
                                </ul>
                            </li>
                            <li><a href="#">موبایل و تبلت</a> <span class="down"></span>
                                <ul>
                                    <li><a href="#">زیردسته های جدید</a></li>
                                    <li><a href="#">زیردسته های جدید</a></li>
                                </ul>
                            </li>
                            <li><a href="#">صوتی و تصویری</a> <span class="down"></span>
                                <ul>
                                    <li><a href="#">زیردسته های جدید</a></li>
                                    <li><a href="#">زیردسته جدید</a></li>
                                </ul>
                            </li>
                            <li><a href="#">لوازم خانگی</a></li>
                        </ul>
                    </li>
                    <li><a href="#">کفش</a> <span class="down"></span>
                        <ul>
                            <li><a href="#">آقایان</a></li>
                            <li><a href="#">بانوان</a> <span class="down"></span>
                                <ul>
                                    <li><a href="#">زیردسته های جدید</a></li>
                                    <li><a href="#">زیردسته ها</a></li>
                                </ul>
                            </li>
                            <li><a href="#">دخترانه</a></li>
                            <li><a href="#">پسرانه</a></li>
                            <li><a href="#">نوزاد</a></li>
                            <li><a href="#">لوازم</a><span class="down"></span>
                                <ul>
                                    <li><a href="#">زیردسته های جدید</a></li>
                                    <li><a href="#">زیردسته های جدید</a></li>
                                    <li><a href="#">زیردسته ها</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#">ساعت</a> <span class="down"></span>
                        <ul>
                            <li><a href="#">ساعت مردانه</a></li>
                            <li><a href="#">ساعت زنانه</a></li>
                            <li><a href="#">ساعت بچگانه</a></li>
                            <li><a href="#">لوازم</a></li>
                        </ul>
                    </li>
                    <li><a href="#">زیبایی و سلامت</a> <span class="down"></span>
                        <ul>
                            <li><a href="#">عطر و ادکلن</a></li>
                            <li><a href="#">آرایشی</a></li>
                            <li><a href="#">ضد آفتاب</a></li>
                            <li><a href="#">مراقبت از پوست</a></li>
                            <li><a href="#">مراقبت از چشم</a></li>
                            <li><a href="#">مراقبت از مو</a></li>
                        </ul>
                    </li>
                </ul>
            </div>

        </aside>
        <!--Left Part End -->
        <!--Middle Part Start-->
        <div id="content" class="col-sm-9">
            <h1 class="title">{{ category.name }}</h1>
            <div class="product-filter">
                <div class="row">
                    <div class="col-md-4 col-sm-5">
                        <div class="btn-group">
                            <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip"
                                    title="List"><i class="fa fa-th-list"></i></button>
                            <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip"
                                    title="Grid"><i class="fa fa-th"></i></button>
                        </div>
                    </div>
                    <div class="col-sm-2 text-right">
                        <label class="control-label" for="input-sort">مرتب سازی :</label>
                    </div>
                    <div class="col-md-3 col-sm-2 text-right">
                        <select id="input-sort" class="form-control col-sm-3" v-model="sort"
                                @change="getSortedProduct()">
                            <option value="" selected="selected">پیشفرض</option>
                            <option value="ASC">قیمت (کم به زیاد)</option>
                            <option value="DESC">قیمت (زیاد به کم)</option>
                        </select>
                    </div>
                    <div class="col-sm-1 text-right">
                        <label class="control-label" for="input-limit">نمایش
                            :</label>
                    </div>
                    <div class="col-sm-2 text-right">
                        <select id="input-limit" class="form-control" v-model="paginate" @change="getSortedProduct()">
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="10">10</option>
                        </select>
                    </div>
                </div>
            </div>
            <br/>
            <div class="row products-category">

                <div class="product-layout product-grid col-lg-3 col-md-3 col-sm-4 col-xs-12"
                     v-for="product in products.data">
                    <div class="product-thumb clearfix">
                        <div class="image">
                            <a :href="'http://127.0.0.1:8000/products/'+ product.slug">
                                <img :src="'http://127.0.0.1:8080/'+product.photos[0].path"
                                     :alt="product.title" :title="product.title" class="img-responsive"/>
                            </a>
                        </div>
                        <div class="caption">
                            <h4><a :href="'http://127.0.0.1:8000/products/'+ product.slug">{{ product.title }}</a></h4>

                            <p class="price" v-if="product.discount_price"><span
                                class="price-new">{{ product.discount_price }}   تومان</span><span
                                class="price-old">{{ product.price }} تومان</span><span
                                class="saving">{{
                                    Math.round(Math.abs((product.price - product.discount_price) / product.price * 100))
                                }}%</span>
                            </p>
                            <p class="price" v-if="!product.discount_price">{{ product.price }} تومان</p>


                        </div>
                        <div class="button-group">
                            <a class="btn-primary" :href="'http://127.0.0.1:8000/add-to-cart/'+ product.id"><span>افزودن به سبد</span></a>
                        </div>
                    </div>

                </div>
                <div class="row" v-if="products.last_page">
                    <div class="col-sm-12 text-center">
                        <paginate
                            v-model="page"
                            :page-count="products.last_page"
                            :page-range="3"
                            :margin-pages="2"
                            :click-handler="clickCallback"
                            :prev-text="'قبلی'"
                            :next-text="'بعدی'"
                            :container-class="'pagination'"
                            :page-class="'page-item'">
                        </paginate>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>

export default {
    data() {
        return {
            products: [],
            paginate: 2,
            sort: 'desc',
            page: 1,
            attributeGroups: [],
            selectedAttribute: [],
            computedAttribute: [],
            flag:false,

        }
    },
    props: ['category'],
    mounted() {
        axios.get('/api/products/' + this.category.id).then(res => {
            this.products = res.data.products
            console.log(res.data.products)
        }).catch(err => {
            console.log(err);
        })
        axios.get('/api/category-attribute/' + this.category.id).then(res => {
            this.attributeGroups = res.data.attributeGroups
            console.log(res.data.attributeGroups)
        }).catch(err => {
            console.log(err);
        })


    },
    methods: {
        clickCallback: function (pageNum) {
            this.products = [];
            if (this.flag){
                this.getFilterProduct();
            }else if (this.sort == "ASC" || this.sort == "DESC") {
                this.getSortedProduct()
            } else {
                axios.get('/api/products/' + this.category.id + '?page=' + pageNum).then(res => {
                    this.products = res.data.products
                    console.log(res.data.products)
                }).catch(err => {
                    console.log(err);
                })
            }
        },
        getSortedProduct: function () {

            this.products = [];
            axios.get('/api/sort-products/' + this.category.id + '/' + this.sort + '/' + this.paginate + '?page=' + this.page).then(res => {
                this.products = res.data.products
                console.log(res.data.products)
            }).catch(err => {
                console.log(err);
            })
        },
        addAttribute: function (event, index) {
            for (var i = 0; i < this.selectedAttribute.length; i++) {
                var current = this.selectedAttribute[i];
                if (current.index == index) {
                    this.selectedAttribute.splice(i, 1);
                }
            }
            this.selectedAttribute.push({
                'index': index,
                'value': event.target.value
            })
            this.computedAttribute = []
            for (var i = 0; i < this.selectedAttribute.length; i++) {
                this.computedAttribute.push(this.selectedAttribute[i].value)
            }
        },
        getFilterProduct: function () {
            this.products = [];
            var attributes = JSON.stringify(this.computedAttribute);
            axios.get('/api/filter-products/' + this.category.id + '/' + this.sort + '/' + this.paginate + '/' + attributes + '?page=' + this.page).then(res => {
                this.products = res.data.products
                console.log(res.data.products)
            }).catch(err => {
                console.log(err);
            })
        }
    }
}
</script>
