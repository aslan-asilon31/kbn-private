<div>
            <!-- ======================== Main header ======================== -->

            <section class="main-header" style="background-image:url(assets/images/gallery-4.jpg)">
                <header>
                    <div class="container">
                        <h1 class="h2 title">Brand {{ $this->brand->name }}</h1>
                        <ol class="breadcrumb breadcrumb-inverted">
                            <li><a href="index.html"><span class="icon icon-home"></span></a></li>
                            <li><a href="category.html">Product Category</a></li>
                            <li><a class="active" href="products-grid.html">Product Sub-category</a></li>
                        </ol>
                    </div>
                </header>
            </section>
    
            <!-- === product filters === -->
    
            <div class="filters filters-top">
                <div class="row row-clean">
    
                    <div class="col-md-3 col-xs-12">
                        <!--Price-->
                        <div class="filter-box">
                            <div class="title">Price</div>
                            <div class="filter-content">
                                <div class="price-filter">
                                    <input type="text" id="range-price-slider" value="" name="range" />
                                </div>
                            </div>
                            <div class="filter-update">
                                Update
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 col-xs-12">
                        <!--Colors-->
                        <div class="filter-box">
                            <div class="title">
                                Colors
                            </div>
                            <div class="filter-content">
                                <div class="product-colors clearfix">
                                    <span class="color-btn color-btn-yellow"></span>
                                    <span class="color-btn color-btn-pink"></span>
                                    <span class="color-btn color-btn-orange"></span>
                                    <span class="color-btn color-btn-red"></span>
                                    <span class="color-btn color-btn-blue checked"></span>
                                    <span class="color-btn color-btn-green"></span>
                                    <span class="color-btn color-btn-gray"></span>
                                    <span class="color-btn color-btn-biege"></span>
                                    <span class="color-btn color-btn-black"></span>
                                    <span class="color-btn color-btn-white"></span>
                                </div>
                            </div>
                            <div class="filter-update">
                                Update
                            </div>
                        </div> <!--/filter-box-->
                    </div>
                    <div class="col-md-2 col-xs-12">
                        <!--Discount-->
                        <div class="filter-box">
                            <div class="title">
                                Discount
                            </div>
                            <div class="filter-content">
                                <span class="checkbox">
                                    <input type="radio" id="discountId1" name="discountPrice" checked="checked">
                                    <label for="discountId1">Discount price</label>
                                </span>
                                <span class="checkbox">
                                    <input type="radio" id="discountId2" name="discountPrice">
                                    <label for="discountId2">Regular price</label>
                                </span>
                            </div>
                            <div class="filter-update">
                                Update
                            </div>
                        </div> <!--/filter-box-->
                    </div>
                    <div class="col-md-3 col-xs-12">
                        <!--Type-->
                        <div class="filter-box">
                            <div class="title">
                                Type
                            </div>
                            <div class="filter-content">
                                <span class="checkbox">
                                    <input type="checkbox" id="typeId1">
                                    <label for="typeId1">Shoes <i>(1200)</i></label>
                                </span>
                                <span class="checkbox">
                                    <input type="checkbox" id="typeId2">
                                    <label for="typeId2">Gadgets <i>(12)</i></label>
                                </span>
                                <span class="checkbox">
                                    <input type="checkbox" id="typeId3">
                                    <label for="typeId3">TV & Video <i>(80)</i></label>
                                </span>
                                <span class="checkbox">
                                    <input type="checkbox" id="typeId4">
                                    <label for="typeId4">Drones <i>(140)</i></label>
                                </span>
                                <span class="checkbox">
                                    <input type="checkbox" id="typeId5">
                                    <label for="typeId5">Media storage <i>(20)</i></label>
                                </span>
                                <span class="checkbox">
                                    <input type="checkbox" id="typeId6">
                                    <label for="typeId6">Cameras <i>(10)</i></label>
                                </span>
                                <span class="checkbox">
                                    <input type="checkbox" id="typeId7">
                                    <label for="typeId7">Bookcase <i>(450)</i></label>
                                </span>
                                <span class="checkbox">
                                    <input type="checkbox" id="typeId8">
                                    <label for="typeId8">Mobile phones <i>(750)</i></label>
                                </span>
                                <span class="checkbox">
                                    <input type="checkbox" id="typeId9">
                                    <label for="typeId9">Accessories <i>(960)</i></label>
                                </span>
                                <span class="checkbox">
                                    <input type="checkbox" id="typeId10">
                                    <label for="typeId10">Home <i>(44)</i></label>
                                </span>
                                <span class="checkbox">
                                    <input type="checkbox" id="typeId11">
                                    <label for="typeId11">Projectors <i>(5)</i></label>
                                </span>
                                <span class="checkbox">
                                    <input type="checkbox" id="typeId12">
                                    <label for="typeId12">Movies & TV <i>(80)</i></label>
                                </span>
                                <span class="checkbox">
                                    <input type="checkbox" id="typeId13">
                                    <label for="typeId13">Fashion <i>(23)</i></label>
                                </span>
                                <span class="checkbox">
                                    <input type="checkbox" id="typeId14">
                                    <label for="typeId14">Toys <i>(24)</i></label>
                                </span>
                                <span class="checkbox">
                                    <input type="checkbox" id="typeId15">
                                    <label for="typeId15">Musical Instruments <i>(92)</i></label>
                                </span>
                                <span class="checkbox">
                                    <input type="checkbox" id="typeId16">
                                    <label for="typeId16">Lightning <i>(1120)</i></label>
                                </span>
                            </div>
                            <div class="filter-update">
                                Update
                            </div>
                        </div> <!--/filter-box-->
                    </div>
                    <div class="col-md-2 col-xs-12">
                        <!--Material-->
                        <div class="filter-box">
                            <div class="title">
                                Material
                            </div>
                            <div class="filter-content">
                                <span class="checkbox">
                                    <input type="checkbox" id="matId1">
                                    <label for="matId1">Blend <i>(1200)</i></label>
                                </span>
                                <span class="checkbox">
                                    <input type="checkbox" id="matId2">
                                    <label for="matId2">Leather <i>(12)</i></label>
                                </span>
                                <span class="checkbox">
                                    <input type="checkbox" id="matId3">
                                    <label for="matId3">Wood <i>(80)</i></label>
                                </span>
                                <span class="checkbox">
                                    <input type="checkbox" id="matId4">
                                    <label for="matId4">Shell <i>(80)</i></label>
                                </span>
                                <span class="checkbox">
                                    <input type="checkbox" id="matId5">
                                    <label for="matId5">Metal <i>(80)</i></label>
                                </span>
                                <span class="checkbox">
                                    <input type="checkbox" id="matId6">
                                    <label for="matId6">Aluminium <i>(80)</i></label>
                                </span>
                                <span class="checkbox">
                                    <input type="checkbox" id="matId7">
                                    <label for="matId7">Acrilic <i>(80)</i></label>
                                </span>
                            </div>
                            <div class="filter-update">
                                Update
                            </div>
                        </div> <!--/filter-box-->
                    </div>
                </div>
    
                <!--close filters on mobile / update filters-->
                <div class="toggle-filters-close btn btn-main visible-sm visible-xs">
                    Update search
                </div>
            </div> <!--/filters-->
            <!-- ======================== Products ======================== -->
    
            <section class="products">
    
                <header class="hidden">
                    <h3 class="h3 title">Product category with topbar</h3>
                </header>
    
                <div class="row">
    
                    <!-- === product-items === -->
    
                    <div class="col-md-12 col-xs-12">
    
                        <div class="sort-bar clearfix">
                            <div class="sort-results pull-left">
                                <!--Showing result per page-->
                                <select>
                                    <option value="1">10</option>
                                    <option value="2">50</option>
                                    <option value="3">100</option>
                                    <option value="4">All</option>
                                </select>
                                <!--Items counter-->
                                <span>Showing all <strong>50</strong> of <strong>3,250</strong> items</span>
                            </div>
                            <div class="sort-options pull-right">
                                <span>Sort by</span>
                                <!--Sort options-->
                                <select>
                                    <option value="1">Name</option>
                                    <option value="2">Popular items</option>
                                    <option value="3">Price: lowest</option>
                                    <option value="4">Price: highest</option>
                                </select>
                                <!--Grid-list view-->
                                <span class="grid-list">
                                    <a href="javascript:void(0);" class="toggle-filters-mobile"><i class="fa fa-search"></i></a>
                                </span>
                            </div>
                        </div>
    
                        <div class="row row-clean">
    
                            <!-- === product-item === -->
    
                            @forelse($this->brand_products as $brand_product )
                            <div class="col-xs-6 col-sm-4 col-lg-3">
                                <a href="/produk-detail/{{ $brand_product->product_id }}">
                                    <article>
                                        <div class="info">
                                            <span class="add-favorite">
                                                <a href="javascript:void(0);" data-title="Add to favorites" data-title-added="Added to favorites list"><i class="icon icon-heart"></i></a>
                                            </span>
                                            <span>
                                                <a href="/produk-detail/{{ $brand_product->product_id }}" class="mfp-open" data-title="Quick wiew"><i class="icon icon-eye"></i></a>
                                                {{-- <a href="#productid1" class="mfp-open" data-title="Quick wiew"><i class="icon icon-eye"></i></a> --}}
                                            </span>
                                        </div>
                                        <div class="btn btn-add">
                                            <i class="icon icon-cart"></i>
                                        </div>
                                        <div class="figure-grid">
                                            <div class="image">
                                                <a href="#productid1" class="mfp-open">
                                                    <img src="assets/images/product-7.png" alt="" width="360" />
                                                </a>
                                            </div>
                                            <div class="text">
                                                <h2 class="title h4">
                                                    <a href="product.html">{{ $brand_product->products_name }}</a>
                                                </h2>
                                                @if($brand_product->product_selling_price > 0 )
                                                    <sub>Rp {{ number_format($brand_product->product_selling_price, 0, ',', '.') }},-</sub>  
                                                    <sup>Rp {{ number_format($brand_product->product_nett_price, 0, ',', '.') }},-</sup>
                                                @else 
                                                    <sub>harga belum di setting</sub>  
                                                @endif
                                                <span class="description clearfix">Gubergren amet dolor ea diam takimata consetetur facilisis blandit et aliquyam lorem ea duo labore diam sit et consetetur nulla</span>
                                            </div>
                                        </div>
                                    </article>
                                </a>
                            </div>
                            @empty
                            <span>no data</span>
                            @endforelse
    
                        
    
                        </div><!--/row-->
    
                        <!--Pagination-->
                        <div class="pagination-wrapper">
                            <ul class="pagination">
                                <li>
                                    <a href="#" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li>
                                    <a href="#" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
    
                    </div> <!--/product items-->
    
    
                </div><!--/row-->
                <!-- ========================  Product info popup - quick view ======================== -->
    
                <div class="popup-main mfp-hide" id="productid1">
    
                    <!-- === product popup === -->
    
                    <div class="product">
    
                        <!-- === popup-title === -->
    
                        <div class="popup-title">
                            <div class="h1 title">Laura <small>product category</small></div>
                        </div>
    
                        <!-- === product gallery === -->
    
                        <div class="owl-product-gallery">
                            <img src="assets/images/product-1.png" alt="" width="640" />
                            <img src="assets/images/product-2.png" alt="" width="640" />
                            <img src="assets/images/product-3.png" alt="" width="640" />
                            <img src="assets/images/product-4.png" alt="" width="640" />
                        </div>
    
                        <!-- === product-popup-info === -->
    
                        <div class="popup-content">
                            <div class="product-info-wrapper">
                                <div class="row">
    
                                    <!-- === left-column === -->
    
                                    <div class="col-sm-6">
                                        <div class="info-box">
                                            <strong>Maifacturer</strong>
                                            <span>Brand name</span>
                                        </div>
                                        <div class="info-box">
                                            <strong>Materials</strong>
                                            <span>Wood, Leather, Acrylic</span>
                                        </div>
                                        <div class="info-box">
                                            <strong>Availability</strong>
                                            <span><i class="fa fa-check-square-o"></i> in stock</span>
                                        </div>
                                    </div>
    
                                    <!-- === right-column === -->
    
                                    <div class="col-sm-6">
                                        <div class="info-box">
                                            <strong>Available Colors</strong>
                                            <div class="product-colors clearfix">
                                                <span class="color-btn color-btn-red"></span>
                                                <span class="color-btn color-btn-blue checked"></span>
                                                <span class="color-btn color-btn-green"></span>
                                                <span class="color-btn color-btn-gray"></span>
                                                <span class="color-btn color-btn-biege"></span>
                                            </div>
                                        </div>
                                        <div class="info-box">
                                            <strong>Choose size</strong>
                                            <div class="product-colors clearfix">
                                                <span class="color-btn color-btn-biege">S</span>
                                                <span class="color-btn color-btn-biege checked">M</span>
                                                <span class="color-btn color-btn-biege">XL</span>
                                                <span class="color-btn color-btn-biege">XXL</span>
                                            </div>
                                        </div>
                                    </div>
    
                                </div><!--/row-->
                            </div> <!--/product-info-wrapper-->
                        </div><!--/popup-content-->
                        <!-- === product-popup-footer === -->
    
                        <div class="popup-table">
                            <div class="popup-cell">
                                <div class="price">
                                    <span class="h3">$ 1999,00 <small>$ 2999,00</small></span>
                                </div>
                            </div>
                            <div class="popup-cell">
                                <div class="popup-buttons">
                                    <a href="product.html"><span class="icon icon-eye"></span> <span class="hidden-xs">View more</span></a>
                                    <a href="javascript:void(0);"><span class="icon icon-cart"></span> <span class="hidden-xs">Buy</span></a>
                                </div>
                            </div>
                        </div>
    
                    </div> <!--/product-->
                </div> <!--popup-main--><!--/container-->
            </section>
</div>