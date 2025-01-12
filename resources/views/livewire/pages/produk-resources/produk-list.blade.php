<div>
            <!-- ======================== Main header ======================== -->

            <section class="main-header">
            <header>
                <div class="container">
                    <h1 class="h2 title">Shop grid</h1>
                    <ol class="breadcrumb breadcrumb-inverted">
                        <li><a href="index.html"><span class="icon icon-home"></span></a></li>
                        <li><a href="category.html">Product Category</a></li>
                        <li><a class="active" href="products-grid.html">Product Sub-category</a></li>
                    </ol>
                </div>
            </header>
        </section>

        <!-- ======================== Products ======================== -->

        <section class="products">
            <header class="hidden">
                <h3 class="h3 title">Product category grid</h3>
            </header>

            <div class="row row-clean">

                <!-- === product-filters === -->

                <x-produk.produk-filter/>

                <!--product items-->

                <div class="col-md-9 col-xs-12">

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
                        <!--Sort options-->
                        <div class="sort-options pull-right">
                            <span class="hidden-xs">Sort by</span>
                            <select>
                                <option value="1">Name</option>
                                <option value="2">Popular items</option>
                                <option value="3">Price: lowest</option>
                                <option value="4">Price: highest</option>
                            </select>
                            <!--Grid-list view-->
                            <span class="grid-list">
                                <a href="products-grid.html"><i class="fa fa-th-large"></i></a>
                                <a href="products-list.html"><i class="fa fa-align-justify"></i></a>
                                <a href="javascript:void(0);" class="toggle-filters-mobile"><i class="fa fa-search"></i></a>
                            </span>
                        </div>
                    </div>

                    <div class="row row-clean">

                    <!-- === product-item === -->
                    @forelse ($product_contents as $product_content)
                        <div class="col-xs-6 col-sm-4 col-lg-3">
                            <article>
                                <div class="info">
                                    <span class="add-favorite">
                                        <a href="/" data-title="Add to favorites" data-title-added="Added to favorites list"><i class="icon icon-heart"></i></a>
                                    </span>
                                    <span>
                                        <a href="#productid1"  wire:click="showProduct('{{$product_content->id}}')" class="mfp-open" data-title="Quick wiew"><i class="icon icon-eye"></i></a>
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
                                            <a href="product.html">{{ $product_content->title }}</a>
                                        </h2>
                                        <sub>$ 159,-</sub>
                                        <sup>$ 139,-</sup>
                                        <span class="description clearfix">Gubergren amet dolor ea diam takimata consetetur facilisis blandit et aliquyam lorem ea duo labore diam sit et consetetur nulla</span>
                                    </div>
                                </div>
                            </article>
                        </div>
                    @empty
                        tidak ada data
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
                        <div class="h1 title">
                            
                        {{ $product->title ?? 'Product Title' }}
                            <small>product category</small>
                        </div>
                    </div>

                    <!-- === product gallery === -->

                    <div class="owl-product-gallery">
                        <img src="assets/images/product-10.png" alt="" width="640" />
                        <img src="assets/images/product-10a.png" alt="" width="640" />
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

                            </div> <!--/row-->
                        </div> <!--/product-info-wrapper-->
                    </div> <!--/popup-content-->
                    <!-- === product-popup-footer === -->
                   
                    <div class="popup-table">
                        <div class="popup-cell">
                            <div class="price">
                                <span class="h3">Rp {{ $product->product_nett_price  ?? 0 }} <small>Rp {{ $product->product_selling_price  ?? 0 }}</small></span>
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
            </div> <!--popup-main--> <!--/container-->

        </section>



        @script


        <script>  
            document.addEventListener('livewire:load', function () {  
                window.addEventListener('openModal', event => {  
                    const modalId = event.detail.modalId; // Ambil ID modal dari event  
                    // Gunakan jQuery atau metode lain untuk membuka modal  
                    $('#' + modalId).modal('show'); // Pastikan Anda menggunakan jQuery atau metode yang sesuai untuk membuka modal  
                });  
            });  
        </script>

        @endscript



</div>