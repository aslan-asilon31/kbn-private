<div >

    <section class="header-content">
  
      <div class="clearifx">
  
          <div class="owl-slider">
              <!-- === slide item === -->
              <div class="item" style="background-image:url({{ asset('frontend/assets/images/gallery-2.jpg')}} ">
                  <div class="box box-left">
                      <div class="text-right">
                          <h2 class="title animated h1" data-animation="fadeInDown">KBN Product</h2>
                          <div class="animated" data-animation="fadeInUp">
                              Score new arrivals from latest electronics
                              <br />
                              Multipurpose Ecommerce template ready
                          </div>
                          <div class="animated" data-animation="fadeInUp">
                              <a href="#" target="_blank" class="btn btn-clean"><i class="icon icon-cart"></i> Buy</a>
                              <a href="#" target="_blank" class="btn btn-clean"><i class="icon icon-eye"></i> Details</a>
                          </div>
                      </div>
                  </div>
              </div>
              <!-- === slide item === -->
              <div class="item" style="background-image:url({{ asset('frontend/assets/images/large-triangles.svg')}} ">
                  <div class="box box-right">
                      <div class="text-left">
                          <h2 class="title animated h1" data-animation="fadeInDown">Buy this template</h2>
                          <div class="animated" data-animation="fadeInUp">
                              Inovative responsive design, with easy customization! <br />
                              Purchase now and get free updates
                          </div>
                          <div class="animated" data-animation="fadeInUp">
                              <a href="#" target="_blank" class="btn btn-clean"><i class="icon icon-cart"></i> Buy</a>
                              <a href="#" target="_blank" class="btn btn-clean"><i class="icon icon-eye"></i> Details</a>
                          </div>
                      </div>
                  </div>
              </div>
          </div> <!--/owl-slider-->
      </div>
  </section>
  
  <!-- ========================  Blog Block ======================== -->
  
  <section class="blog blog-block blog-intro">
  
      <div class="container">
  
          <!-- === blog header === -->
  
          <header class="hidden">
              <div class="row">
                  <div class="col-md-offset-2 col-md-8 text-center">
                      <h2 class="title">Check out our featured news</h2>
                      <div class="text">
                          <p>Keeping things minimal</p>
                      </div>
                  </div>
              </div>
          </header>
  
          <div class="row row-clean">
  

            @forelse($product_brands as $product_brand)
  
                <div class="col-xs-6 col-sm-3">
                    <article>
                        <a href="/produk-brand/{{ $product_brand->id }}">
                            <div class="image">
                                <svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 480 640'><rect fill='#0099ff' width='480' height='640'/><defs><radialGradient id='a' cx='800' cy='371' r='70%' gradientUnits='userSpaceOnUse'><stop  offset='0' stop-color='#0099ff'/><stop  offset='1' stop-color='#04C'/></radialGradient><radialGradient id='b' cx='800' cy='371' r='60%' gradientUnits='userSpaceOnUse'><stop  offset='0' stop-color='#0EF' stop-opacity='1'/><stop  offset='1' stop-color='#0EF' stop-opacity='0'/></radialGradient></defs><rect fill='url(#a)' width='1600' height='900'/><g  fill='none' stroke='#03E' stroke-width='10' stroke-miterlimit='10' stroke-opacity='.5'><polygon points='2277.4 1152 800-1407-677.4 1152'/><polygon points='800-1372.9-648.8 1136.5 2248.8 1136.5'/><polygon points='800-1338.8-620.2 1121.1 2220.2 1121.1'/><polygon points='800-1304.7-591.6 1105.6 2191.6 1105.6'/><polygon points='800-1270.6-563 1090.2 2163 1090.2'/><polygon points='800-1236.5-534.4 1074.7 2134.4 1074.7'/><polygon points='800-1202.4-505.8 1059.3 2105.8 1059.3'/><polygon points='800-1168.3-477.2 1043.8 2077.2 1043.8'/><polygon points='800-1134.2-448.6 1028.4 2048.6 1028.4'/><polygon points='800-1100.1-420 1012.9 2020 1012.9'/><polygon points='800-1066-391.4 997.5 1991.4 997.5'/><polygon points='800-1031.9-362.7 982 1962.7 982'/><polygon points='800-997.8-334.1 966.6 1934.1 966.6'/><polygon points='800-963.7-305.5 951.1 1905.5 951.1'/><polygon points='800-929.6-276.9 935.7 1876.9 935.7'/><polygon points='800-895.5-248.3 920.2 1848.3 920.2'/><polygon points='800-861.4-219.7 904.7 1819.7 904.7'/><polygon points='800-827.3-191.1 889.3 1791.1 889.3'/><polygon points='800-793.2-162.5 873.8 1762.5 873.8'/><polygon points='800-759.1-133.9 858.4 1733.9 858.4'/><polygon points='800-725-105.3 842.9 1705.3 842.9'/><polygon points='800-690.9-76.7 827.5 1676.7 827.5'/><polygon points='800-656.8-48.1 812 1648.1 812'/><polygon points='800-622.7-19.4 796.6 1619.4 796.6'/><polygon points='800-588.6 9.2 781.1 1590.8 781.1'/><polygon points='800-554.5 37.8 765.7 1562.2 765.7'/><polygon points='800-520.5 66.4 750.2 1533.6 750.2'/><polygon points='800-486.4 95 734.8 1505 734.8'/><polygon points='800-452.3 123.6 719.3 1476.4 719.3'/><polygon points='800-418.2 152.2 703.9 1447.8 703.9'/><polygon points='800-384.1 180.8 688.4 1419.2 688.4'/><polygon points='800-350 209.4 673 1390.6 673'/><polygon points='800-315.9 238 657.5 1362 657.5'/><polygon points='800-281.8 266.6 642 1333.4 642'/><polygon points='800-247.7 295.2 626.6 1304.8 626.6'/><polygon points='800-213.6 323.9 611.1 1276.1 611.1'/><polygon points='800-179.5 352.5 595.7 1247.5 595.7'/><polygon points='800-145.4 381.1 580.2 1218.9 580.2'/><polygon points='800-111.3 409.7 564.8 1190.3 564.8'/><polygon points='800-77.2 438.3 549.3 1161.7 549.3'/><polygon points='800-43.1 466.9 533.9 1133.1 533.9'/><polygon points='800-9 495.5 518.4 1104.5 518.4'/><polygon points='800 25.1 524.1 503 1075.9 503'/><polygon points='800 59.2 552.7 487.5 1047.3 487.5'/><polygon points='800 93.3 581.3 472.1 1018.7 472.1'/><polygon points='800 127.4 609.9 456.6 990.1 456.6'/><polygon points='800 161.5 638.5 441.2 961.5 441.2'/><polygon points='800 195.6 667.2 425.7 932.8 425.7'/><polygon points='800 229.7 695.8 410.2 904.2 410.2'/><polygon points='800 263.8 724.4 394.8 875.6 394.8'/><polygon points='800 297.9 753 379.3 847 379.3'/><polygon points='800 332 781.6 363.9 818.4 363.9'/></g><rect fill-opacity='.5' fill='url(#b)' width='1600' height='900'/></svg>
                            </div>
                            <div class="entry entry-block">
                                <div class="date">BRAND</div>
                                <div class="title">
                                    <h2 class="h3">{{ $product_brand->name }}</h2>
                                </div>
                                <div class="description">
                                    <p>
                                        Top picks four your desire
                                    </p>
                                </div>
                            </div>
                            <div class="show-more">
                                <span class="btn btn-clean">Shop now</span>
                            </div>
                        </a>
                    </article>
                </div>

            @empty  
                <div class="col-12">  
                    <p>Tidak ada produk yang tersedia.</p>  
                </div>  
            @endforelse 

          </div> <!--/row-->
  
          <!-- === button more === -->
  
          <div class="wrapper-more">
              <a href="ideas.html" class="btn btn-lg">View all categories</a>
          </div>
  
      </div> <!--/container-->
  </section>
  
  <!-- ========================  Block banner category ======================== -->
  
  <section class="blog blog-block">
  
      <!-- === header === -->
  
      <header class="hidden">
          <div class="text-center"><h2 class="title">Categories</h2></div>
      </header>
  
      <div class="row row-clean">
  
          <!-- === blog item === -->
  
          @forelse($product_brand_lists as $brand)

            <div class="col-md-6">
                <article>
                    <div>
                        <div class="image">
    
                            <!--Desktop image-->
                            <img src="{{ asset('frontend/assets/images/shop-1.jpg') }}" alt="" class="hidden-xs" />
    
                            <!--Mobile image-->
                            <img src="{{ asset('frontend/assets/images/shop-1-mobile.jpg') }}" alt="" class="visible-xs" />
    
                        </div>
                        <div class="entry entry-block">
                            <div class="date">Shop for</div>
                            <div class="title">
                                <h2 class="h3">{{ $brand->name }}</h2>
                            </div>
                            <div class="description">
                                @foreach($brand->products as $product)
                                    <ul>
                                        {{ $product->name }}
                                    </ul>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </article>
            </div>
    
            @empty  
            <div class="col-12">  
                <p>Tidak ada produk yang tersedia.</p>  
            </div>  
            @endforelse 
      </div> 



  </section>
  
  <!-- ========================  Icons slider ======================== -->
  
  <section class="owl-icons-wrapper">
  
      <!-- === header === -->
  
      <header class="hidden">
          <div class="text-center"><h2 class="title">Product categories</h2></div>
      </header>
  
      <div class="clearfix">
  
          <div class="owl-icons owl-icons-rounded owl-icons-frontpage">
  
            @forelse ($product_contents as $product_content)
                <a href="#">
                    <figure>
                        <img src="{{ asset('frontend/assets/images/product-1.png') }}" alt="Alternate Text" />
                        <figcaption>{{ $product_content->products_name }}</figcaption>
                    </figure>
                </a>
            @empty
                <a href="/">
                    tidak ada product
                </a>
            @endforelse
  

  
  
  
  
  
          </div> <!--/owl-icons-->
      </div> <!--/container-->
  </section>
  
  <!-- ========================  Best seller ======================== -->
  
  <section class="products">
  
      <!-- === header title === -->
  
      <header>
          <div class="row">
              <div class="col-md-offset-2 col-md-8 text-center">
                  <h2 class="title">Best seller</h2>
                  <div class="text">
                      <p>Check out our latest collections</p>
                  </div>
              </div>
          </div>
      </header>
  
      <div class="row row-clean">
  
        
        @forelse ($product_contents as $product_content)
            <div class="col-xs-6 col-sm-4 col-lg-2">
                <article>
                    <div class="info">
                        <span class="add-favorite">
                            <a href="javascript:void(0);" data-title="Add to favorites" data-title-added="Added to favorites list"><i class="icon icon-heart"></i></a>
                        </span>
                        <span>
                            <a href="#productid1" class="mfp-open" data-title="Quick wiew"><i class="icon icon-eye"></i></a>
                        </span>
                    </div>
                    <div class="btn btn-add">
                        <i class="icon icon-cart"></i>
                    </div>
                    <div class="figure-grid">
                        <div class="image">
                            <a href="#productid1" class="mfp-open">
                                <img src="{{ asset('frontend/assets/images/product-7.png') }}" alt="" width="360" />
                            </a>
                        </div>
                        <div class="text">
                                <h2 class="title h5">
                                    <a href="product.html">{{ $product_content->title }}</a>
                                </h2>
                                @if($product_content->product_selling_price > 0 )
                                    <sub>Rp {{ number_format($product_content->product_selling_price, 0, ',', '.') }},-</sub>  
                                    <sup>Rp {{ number_format($product_content->product_nett_price, 0, ',', '.') }},-</sup>
                                @else 
                                    <sub>harga belum di setting</sub>  
                                @endif
                                
                            <span class="description clearfix">Gubergren amet dolor ea diam takimata consetetur facilisis blandit et aliquyam lorem ea duo labore diam sit et consetetur nulla</span>
                        </div>
                    </div>
                </article>
            </div>
        @empty
            tidak ada data
        @endforelse
  

  
          
  
      </div> <!--/row-->
      <!-- === button more === -->
  
      <div class="wrapper-more">
          <a href="products-grid.html" class="btn btn-lg">View all</a>
      </div>
  
      <!-- ========================  Product info popup - quick view ======================== -->
  
      <div class="popup-main mfp-hide" id="productid1">
  
          <!-- === product popup === -->
  
          <div class="product">
  
              <!-- === popup-title === -->
  
              <div class="popup-title">
                  <div class="h1 title">
                      Headphones Wireless
                      <small>product category</small>
                  </div>
              </div>
  
              <!-- === product gallery === -->
  
              <div class="owl-product-gallery">
                  <img src="{{ asset('frontend/assets/images/product-10.png') }}" alt="" width="640" />
                  <img src="{{ asset('frontend/assets/images/product-10a.png') }}" alt="" width="640" />
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
      </div> <!--popup-main--> <!--/container-->
  
  </section>
  
  <!-- ========================  Block banner fashion ======================== -->
  
  <section class="blog blog-block">
  
      <!-- === header === -->
  
      <header class="hidden">
          <div class="text-center"><h2 class="title">Fashion</h2></div>
      </header>
  
      <div class="row row-clean">
  
          <!-- === blog item === -->
  
          <div class="col-sm-4">
              <article>
                  <div>
                      <div class="image">
                          <img src="{{ asset('frontend/assets/images/shop-3.jpg') }}" alt="" />
                      </div>
                      <div class="entry entry-block">
                          <div class="date">Shop for</div>
                          <div class="title">
                              <h2 class="h3">Woman's</h2>
                          </div>
                          <div class="description">
                              <ul>
                                  <li>
                                      <a href="#">New arrivals</a>
                                  </li>
                                  <li>
                                      <a href="#">Doscount sale collection</a>
                                  </li>
                                  <li class="more">
                                      <a href="#">More</a>
                                  </li>
                              </ul>
                          </div>
                      </div>
                  </div>
              </article>
          </div>
  
          <!-- === blog item === -->
  
          <div class="col-sm-4">
              <article>
                  <div>
                      <div class="image">
                          <img src="{{ asset('frontend/assets/images/shop-4.jpg') }}" alt="" />
                      </div>
                      <div class="entry entry-block">
                          <div class="date">Shop for</div>
                          <div class="title">
                              <h2 class="h3">Man's</h2>
                          </div>
                          <div class="description">
                              <ul class="col">
                                  <li>
                                      <a href="#">New arrivals</a>
                                  </li>
                                  <li>
                                      <a href="#">Doscount sale collection</a>
                                  </li>
                                  <li class="more">
                                      <a href="#">More</a>
                                  </li>
                              </ul>
                          </div>
                      </div>
                  </div>
              </article>
          </div>
  
          <!-- === blog item === -->
  
          <div class="col-sm-4">
              <article>
                  <div>
                      <div class="image">
                          <img src="{{ asset('frontend/assets/images/shop-5.jpg') }}" alt="" />
                      </div>
                      <div class="entry entry-block">
                          <div class="date">Shop for</div>
                          <div class="title">
                              <h2 class="h3">Kids</h2>
                          </div>
                          <div class="description">
                              <ul class="col">
                                  <li>
                                      <a href="#">New arrivals</a>
                                  </li>
                                  <li>
                                      <a href="#">Doscount sale collection</a>
                                  </li>
                                  <li class="more">
                                      <a href="#">More</a>
                                  </li>
                              </ul>
                          </div>
                      </div>
                  </div>
              </article>
          </div>
  
      </div> <!--/row-->
  </section>
  
  <!-- ========================  Products widget ======================== -->
  
  <section class="products">
  
      <!-- === header title === -->
  
      <header>
          <div class="row">
              <div class="col-md-offset-2 col-md-8 text-center">
                  <h2 class="title">Clothing & Shoes</h2>
                  <div class="text">
                      <p>Check out our latest collections</p>
                  </div>
              </div>
          </div>
      </header>
  
      <div class="row row-clean">
  
          <!-- === product-item === -->
  
          <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
  
              <article>
                  <div class="info">
                      <span class="add-favorite">
                          <a href="javascript:void(0);" data-title="Add to favorites" data-title-added="Added to favorites list"><i class="icon icon-heart"></i></a>
                      </span>
                      <span>
                          <a href="#productid1" class="mfp-open" data-title="Quick wiew"><i class="icon icon-eye"></i></a>
                      </span>
                  </div>
                  <div class="btn btn-add">
                      <i class="icon icon-cart"></i>
                  </div>
                  <div class="figure-grid">
                      <div class="image">
                          <a href="#productid1" class="mfp-open">
                              <img src="{{ asset('frontend/assets/images/cloth-1.jpg') }}" alt="" width="360" />
                          </a>
                      </div>
                      <div class="text">
                          <h2 class="title h5">
                              <a href="product.html">Elegant shoe</a>
                          </h2>
                          <sub>$ 199,-</sub>
                          <sup>$ 99,-</sup>
                          <span class="description clearfix">Gubergren amet dolor ea diam takimata consetetur facilisis blandit et aliquyam lorem ea duo labore diam sit et consetetur nulla</span>
                      </div>
                  </div>
              </article>
          </div>
  
          <!-- === product-item === -->
  
          <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
              <article>
                  <div class="info">
                      <span class="add-favorite">
                          <a href="javascript:void(0);" data-title="Add to favorites" data-title-added="Added to favorites list"><i class="icon icon-heart"></i></a>
                      </span>
                      <span>
                          <a href="#productid1" class="mfp-open" data-title="Quick wiew"><i class="icon icon-eye"></i></a>
                      </span>
                  </div>
                  <div class="btn btn-add">
                      <i class="icon icon-cart"></i>
                  </div>
                  <div class="figure-grid">
                      <div class="image">
                          <a href="#productid1" class="mfp-open">
                              <img src="{{ asset('frontend/assets/images/cloth-2.jpg') }}" alt="" width="360" />
                          </a>
                      </div>
                      <div class="text">
                          <h2 class="title h5">
                              <a href="product.html">Polo shirt</a>
                          </h2>
                          <sub>$ 159,-</sub>
                          <sup>$ 129,-</sup>
                          <span class="description clearfix">Gubergren amet dolor ea diam takimata consetetur facilisis blandit et aliquyam lorem ea duo labore diam sit et consetetur nulla</span>
                      </div>
                  </div>
              </article>
          </div>
  
          <!-- === product-item === -->
  
          <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
              <article>
                  <div class="info">
                      <span class="add-favorite">
                          <a href="javascript:void(0);" data-title="Add to favorites" data-title-added="Added to favorites list"><i class="icon icon-heart"></i></a>
                      </span>
                      <span>
                          <a href="#productid1" class="mfp-open" data-title="Quick wiew"><i class="icon icon-eye"></i></a>
                      </span>
                  </div>
                  <div class="btn btn-add">
                      <i class="icon icon-cart"></i>
                  </div>
                  <div class="figure-grid">
                      <span class="label label-warning">New</span>
                      <div class="image">
                          <a href="#productid1" class="mfp-open">
                              <img src="{{ asset('frontend/assets/images/cloth-3.jpg') }}" alt="" width="360" />
                          </a>
                      </div>
                      <div class="text">
                          <h2 class="title h5">
                              <a href="product.html">T-shirt</a>
                          </h2>
                          <sup>$ 29,-</sup>
                          <span class="description clearfix">Gubergren amet dolor ea diam takimata consetetur facilisis blandit et aliquyam lorem ea duo labore diam sit et consetetur nulla</span>
                      </div>
                  </div>
              </article>
          </div>
  
          <!-- === product-item === -->
  
          <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
              <article>
                  <div class="info">
                      <span class="add-favorite added">
                          <a href="javascript:void(0);" data-title="Add to favorites" data-title-added="Added to favorites list"><i class="icon icon-heart"></i></a>
                      </span>
                      <span>
                          <a href="#productid1" class="mfp-open" data-title="Quick wiew"><i class="icon icon-eye"></i></a>
                      </span>
                  </div>
                  <div class="btn btn-add">
                      <i class="icon icon-cart"></i>
                  </div>
                  <div class="figure-grid">
                      <div class="image">
                          <a href="#productid1" class="mfp-open">
                              <img src="{{ asset('frontend/assets/images/cloth-4.jpg') }}" alt="" width="360" />
                          </a>
                      </div>
                      <div class="text">
                          <h2 class="title h5">
                              <a href="product.html">Winter Jacket</a>
                          </h2>
                          <sup>$ 299,-</sup>
                          <span class="description clearfix">Gubergren amet dolor ea diam takimata consetetur facilisis blandit et aliquyam lorem ea duo labore diam sit et consetetur nulla</span>
                      </div>
                  </div>
              </article>
          </div>
  
          <!-- === product-item === -->
  
          <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
              <article>
                  <div class="info">
                      <span class="add-favorite">
                          <a href="javascript:void(0);" data-title="Add to favorites" data-title-added="Added to favorites list"><i class="icon icon-heart"></i></a>
                      </span>
                      <span>
                          <a href="#productid1" class="mfp-open" data-title="Quick wiew"><i class="icon icon-eye"></i></a>
                      </span>
                  </div>
                  <div class="btn btn-add">
                      <i class="icon icon-cart"></i>
                  </div>
                  <div class="figure-grid">
                      <span class="label label-info">-50%</span>
                      <div class="image">
                          <a href="#productid1" class="mfp-open">
                              <img src="{{ asset('frontend/assets/images/cloth-5.jpg') }}" alt="" width="360" />
                          </a>
                      </div>
                      <div class="text">
                          <h2 class="title h5">
                              <a href="product.html">Sweater</a>
                          </h2>
                          <sub>$ 49,-</sub>
                          <sup>$ 19,-</sup>
                          <span class="description clearfix">Gubergren amet dolor ea diam takimata consetetur facilisis blandit et aliquyam lorem ea duo labore diam sit et consetetur nulla</span>
                      </div>
                  </div>
              </article>
          </div>
  
          <!-- === product-item === -->
  
          <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
              <article>
                  <div class="info">
                      <span class="add-favorite">
                          <a href="javascript:void(0);" data-title="Add to favorites" data-title-added="Added to favorites list"><i class="icon icon-heart"></i></a>
                      </span>
                      <span>
                          <a href="#productid1" class="mfp-open" data-title="Quick wiew"><i class="icon icon-eye"></i></a>
                      </span>
                  </div>
                  <div class="btn btn-add">
                      <i class="icon icon-cart"></i>
                  </div>
                  <div class="figure-grid">
                      <div class="image">
                          <a href="#productid1" class="mfp-open">
                              <img src="{{ asset('frontend/assets/images/cloth-6.jpg') }}" alt="" width="360" />
                          </a>
                      </div>
                      <div class="text">
                          <h2 class="title h5">
                              <a href="product.html">Lether jacket</a>
                          </h2>
                          <sup>$ 499,-</sup>
                          <span class="description clearfix">Gubergren amet dolor ea diam takimata consetetur facilisis blandit et aliquyam lorem ea duo labore diam sit et consetetur nulla</span>
                      </div>
                  </div>
              </article>
          </div>
      </div>
  
      <!-- === button more === -->
  
      <div class="wrapper-more">
          <a href="products-grid.html" class="btn btn-lg">View store</a>
      </div>
  </section>
  
  <!-- ========================  Block banner shop  ======================== -->
  
  <section class="blog blog-block">
  
      <!-- === header === -->
  
      <header class="hidden">
          <div class="text-center"><h2 class="title">Banner</h2></div>
      </header>
  
      <div class="row row-clean">
  
          <!-- === blog item === -->
  
          <div class="col-lg-6">
              <article>
                  <div>
                      <div class="image">
                          <img src="{{ asset('frontend/assets/images/cat-1.jpg') }}" alt="" />
                      </div>
                      <div class="entry entry-block">
                          <div class="date">Shop for</div>
                          <div class="title">
                              <h2 class="h3">Boxing & MMA Equipment</h2>
                          </div>
                          <div class="description">
                              <ul>
                                  <li>
                                      <a href="#">New arrivals</a>
                                  </li>
                                  <li>
                                      <a href="#">Doscount sale collection</a>
                                  </li>
                                  <li class="more">
                                      <a href="#">More</a>
                                  </li>
                              </ul>
                          </div>
                      </div>
                  </div>
              </article>
          </div>
  
          <!-- === blog item === -->
  
          <div class="col-lg-6">
              <article>
                  <div>
                      <div class="image">
                          <img src="{{ asset('frontend/assets/images/cat-2.jpg') }}" alt="" />
                      </div>
                      <div class="entry entry-block">
                          <div class="date">Shop for</div>
                          <div class="title">
                              <h2 class="h3">Fitness, Running & Yoga Equipment</h2>
                          </div>
                          <div class="description">
                              <ul class="col">
                                  <li>
                                      <a href="#">New arrivals</a>
                                  </li>
                                  <li>
                                      <a href="#">Doscount sale collection</a>
                                  </li>
                                  <li class="more">
                                      <a href="#">More</a>
                                  </li>
                              </ul>
                          </div>
                      </div>
                  </div>
              </article>
          </div>
  
  
      </div> <!--/row-->
  </section>
  
  
  <!-- ========================  Stretcher widget ======================== -->
  
  <section class="stretcher-wrapper">
  
      <!-- === stretcher header === -->
  
      <header>
          <div class="row">
              <div class="col-md-offset-2 col-md-8 text-center">
                  <h1 class="h2 title">Premium watches</h1>
                  <div class="text">
                      <p>Give the gift of polished punctuality</p>
                  </div>
              </div>
          </div>
      </header>
  
      <!-- === stretcher === -->
  
      <ul class="stretcher">
  
          <!-- === stretcher item === -->
  
          <li class="stretcher-item" style="background-image:url({{ asset('frontend/assets/images/shop-6.jpg')}};">
              <!--logo-item-->
              <div class="stretcher-logo">
                  <div class="text">
                      <span class="text-intro">Man's</span>
                  </div>
              </div>
              <!--main text-->
              <figure>
                  <h4>Man's watches</h4>
                  <figcaption>Collection of prestigious, high precision timepieces</figcaption>
              </figure>
              <!--anchor-->
              <a href="#">Anchor link</a>
          </li>
  
          <!-- === stretcher item === -->
  
          <li class="stretcher-item" style="background-image:url({{ asset('frontend/assets/images/shop-7.jpg')}};">
              <!--logo-item-->
              <div class="stretcher-logo">
                  <div class="text">
                      <span class="text-intro">Woman's</span>
                  </div>
              </div>
              <!--main text-->
              <figure>
                  <h4>Womans's watches</h4>
                  <figcaption>Choose among a wonderful variety of refined and feminine timepieces</figcaption>
              </figure>
              <!--anchor-->
              <a href="#">Anchor link</a>
          </li>
  
          <!-- === stretcher item === -->
  
          <li class="stretcher-item" style="background-image:url({{ asset('frontend/assets/images/shop-8.jpg')}};">
              <!--logo-item-->
              <div class="stretcher-logo">
                  <div class="text">
                      <span class="text-intro">Professional</span>
                  </div>
              </div>
              <!--main text-->
              <figure>
                  <h4>Professional watches</h4>
                  <figcaption>Discover your favourite model by combining materials</figcaption>
              </figure>
              <!--anchor-->
              <a href="#">Anchor link</a>
          </li>
  
          <!-- === stretcher item === -->
  
          <li class="stretcher-item" style="background-image:url({{ asset('frontend/assets/images/shop-9.jpg')}};">
              <!--logo-item-->
              <div class="stretcher-logo">
                  <div class="text">
                      <span class="text-intro">Diamond bezzels</span>
                  </div>
              </div>
              <!--main text-->
              <figure>
                  <h4>Diamond bezzels</h4>
                  <figcaption>Diamond bezel watch collection of luxurious pieces</figcaption>
              </figure>
              <!--anchor-->
              <a href="#">Anchor link</a>
          </li>
  
          <!-- === stretcher item more=== -->
  
          <li class="stretcher-item more">
              <div class="more-icon">
                  <span data-title-show="Show more" data-title-hide="+"></span>
              </div>
              <a href="#"></a>
          </li>
  
      </ul>
  </section>
  
  <!-- ========================  Cards ======================== -->
  
  <section id="page-interiors" class="cards">
  
      <!-- === cards header === -->
  
      <header>
          <div class="row">
              <div class="col-md-offset-2 col-md-8 text-center">
                  <h2 class="title">Home accessories</h2>
                  <div class="text">
                      <p>Get premium performance compromises!</p>
                  </div>
              </div>
          </div>
      </header>
  
      <div class="row row-clean">
  
          <!-- === item === -->
  
          <div class="col-md-8">
              <figure>
                  <figcaption style="background-image:url({{ asset('frontend/assets/images/block-1.png') }})">
                      <img src="{{ asset('frontend/assets/images/blog-1.jpg') }}" alt="" />
                  </figcaption>
                  <a href="#interiorId1" class="btn btn-clean mfp-open mfp-open-scrollto">Mobile phones</a>
              </figure>
          </div>
  
          <!-- === item === -->
  
          <div class="col-md-4">
              <figure>
                  <figcaption style="background-image:url({{ asset('frontend/assets/images/block-2.png')}}">
                      <img src="{{ asset('frontend/assets/images/block-2.png') }}" alt="" />
                  </figcaption>
                  <a href="#interiorId1" class="btn btn-clean mfp-open mfp-open-scrollto">Home accessories</a>
              </figure>
          </div>
  
          <!-- === item === -->
  
          <div class="col-md-4">
              <figure>
                  <figcaption style="background-image:url({{ asset('frontend/assets/images/block-3.png')}}">
                      <img src="{{ asset('frontend/assets/images/block-3.png') }}" alt="" />
                  </figcaption>
                  <a href="#interiorId1" class="btn btn-clean mfp-open mfp-open-scrollto">Smart TV</a>
              </figure>
          </div>
  
          <!-- === item === -->
  
          <div class="col-md-4">
              <figure>
                  <figcaption style="background-image:url({{ asset('frontend/assets/images/block-4.png')}}">
                      <img src="{{ asset('frontend/assets/images/block-4.png') }}" alt="" />
                  </figcaption>
                  <a href="#interiorId1" class="btn btn-clean mfp-open mfp-open-scrollto">Chairs</a>
              </figure>
          </div>
  
          <!-- === item === -->
  
          <div class="col-md-4">
              <figure>
                  <figcaption style="background-image:url({{ asset('frontend/assets/images/block-5.png')}}">
                      <img src="{{ asset('frontend/') }}assets/images/block-5.png" alt="" />
                  </figcaption>
                  <a href="#interiorId1" class="btn btn-clean mfp-open mfp-open-scrollto">Gaming</a>
              </figure>
          </div>
  
  
  
      </div> <!--/row--> <!--/container-->
      <!-- === button more === -->
  
      <div class="wrapper-more">
          <a href="products-grid.html" class="btn btn-lg">View more</a>
      </div>
  </section>
  
  
  <!-- ========================  Blog ======================== -->
  
  <section class="blog blog-widget blog-animation">
  
      <!-- === blog header === -->
  
      <header>
          <div class="row">
              <div class="col-md-offset-2 col-md-8 text-center">
                  <h1 class="h2 title">Blog</h1>
                  <div class="text">
                      <p>Latest news from the blog</p>
                  </div>
              </div>
          </div>
      </header>
  
      <div class="container">
  
          <div class="row">
  
              <!-- === blog item === -->
  
              <div class="col-sm-3">
                  <article>
                      <a href="article.html">
                          <div class="image" style="background-image:url({{ asset('frontend/assets/images/blog-1.jpg')}}">
                              <img src="{{ asset('frontend/assets/images/blog-1.jpg') }}" alt="" />
                          </div>
                          <div class="entry entry-table">
                              <div class="date-wrapper">
                                  <div class="date">
                                      <span>MAR</span>
                                      <strong>08</strong>
                                      <span>2017</span>
                                  </div>
                              </div>
                              <div class="title">
                                  <h2 class="h5">Turn off the lights before bed with one word</h2>
                              </div>
                          </div>
                      </a>
                  </article>
              </div>
  
              <!-- === blog item === -->
  
              <div class="col-sm-3">
                  <article>
                      <a href="article.html">
                          <div class="image" style="background-image:url({{ asset('frontend/assets/images/blog-2.jpg')}}">
                              <img src="{{ asset('frontend/assets/images/blog-2.jpg') }}" alt="" />
                          </div>
                          <div class="entry entry-table">
                              <div class="date-wrapper">
                                  <div class="date">
                                      <span>MAR</span>
                                      <strong>03</strong>
                                      <span>2017</span>
                                  </div>
                              </div>
                              <div class="title">
                                  <h2 class="h5">Lock the front door when you head to work</h2>
                              </div>
                          </div>
                      </a>
                  </article>
              </div>
  
              <!-- === blog item === -->
  
              <div class="col-sm-3">
                  <article>
                      <a href="article.html">
                          <div class="image" style="background-image:url({{ asset('frontend/assets/images/blog-3.jpg')}}">
                              <img src="{{ asset('frontend/assets/images/blog-3.jpg') }}" alt="" />
                          </div>
                          <div class="entry entry-table">
                              <div class="date-wrapper">
                                  <div class="date">
                                      <span>MAR</span>
                                      <strong>01</strong>
                                      <span>2017</span>
                                  </div>
                              </div>
                              <div class="title">
                                  <h2 class="h5">Get a notification when your kids walk in the door</h2>
                              </div>
                          </div>
                      </a>
                  </article>
              </div>
  
              <!-- === blog item === -->
  
              <div class="col-sm-3">
                  <article>
                      <a href="article.html">
                          <div class="image" style="background-image:url({{ asset('frontend/assets/images/blog-4.jpg')}}">
                              <img src="{{ asset('frontend/assets/images/blog-4.jpg') }}" alt="" />
                          </div>
                          <div class="entry entry-table">
                              <div class="date-wrapper">
                                  <div class="date">
                                      <span>MAR</span>
                                      <strong>01</strong>
                                      <span>2017</span>
                                  </div>
                              </div>
                              <div class="title">
                                  <h2 class="h5">Wake up to a warm cup of coffee</h2>
                              </div>
                          </div>
                      </a>
                  </article>
              </div>
  
          </div> <!--/row-->
      </div>
      <!-- === button more === -->
  
      <div class="wrapper-more">
          <a href="blog-grid.html" class="btn btn-lg">View all posts</a>
      </div> <!--/container-->
  </section>
  
  
  <!-- ========================  Banner ======================== -->
  
  <section class="banner">
  
      <!-- === header === -->
  
      <h2 class="hidden">Banner</h2>
  
      <div class="container">
          <div class="row">
              <div class="col-md-offset-2 col-md-8 text-center">
                  <h2 class="title">Our story</h2>
                  <p>
                      We believe in creativity as one of the major forces of progress. With this idea, we traveled throughout Italy to find exceptional
                      artisans and bring their unique handcrafted objects to connoisseurs everywhere.
                  </p>
                  <p>
                      <a href="about.html" class="btn btn-clean">Read full story</a>
                  </p>
              </div>
          </div>
      </div>
  </section>
  
  <!-- ========================  Instagram ======================== -->
  
  <section class="instagram">
  
      <!-- === instagram header === -->
  
      <header>
          <h2 class="h3 title">
              Follow us<br />
              <i class="fa fa-instagram fa-3x"></i> <br />
              Instagram
          </h2>
          <div class="text">
              <p>@LagerShop</p>
          </div>
      </header>
  
      <!-- === instagram gallery === -->
  
      <div class="gallery clearfix">
          <a class="item" href="#">
              <img src="{{ asset('frontend/assets/images/square-1.jpg') }}" alt="Alternate Text" />
          </a>
          <a class="item" href="#">
              <img src="{{ asset('frontend/assets/images/square-2.jpg') }}" alt="Alternate Text" />
          </a>
          <a class="item" href="#">
              <img src="{{ asset('frontend/assets/images/square-3.jpg') }}" alt="Alternate Text" />
          </a>
          <a class="item" href="#">
              <img src="{{ asset('frontend/assets/images/square-4.jpg') }}" alt="Alternate Text" />
          </a>
          <a class="item" href="#">
              <img src="{{ asset('frontend/assets/images/square-5.jpg') }}" alt="Alternate Text" />
          </a>
          <a class="item" href="#">
              <img src="{{ asset('frontend/assets/images/square-6.jpg') }}" alt="Alternate Text" />
          </a>
          <a class="item" href="#">
              <img src="{{ asset('frontend/assets/images/square-7.jpg') }}" alt="Alternate Text" />
          </a>
          <a class="item" href="#">
              <img src="{{ asset('frontend/assets/images/square-8.jpg') }}" alt="Alternate Text" />
          </a>
          <a class="item" href="#">
              <img src="{{ asset('frontend/assets/images/square-9.jpg') }}" alt="Alternate Text" />
          </a>
          <a class="item" href="#">
              <img src="{{ asset('frontend/assets/images/square-10.jpg') }}" alt="Alternate Text" />
          </a>
          <a class="item" href="#">
              <img src="{{ asset('frontend/assets/images/square-11.jpg') }}" alt="Alternate Text" />
          </a>
          <a class="item" href="#">
              <img src="{{ asset('frontend/assets/images/square-12.jpg') }}" alt="Alternate Text" />
          </a>
      </div> <!--/gallery-->
  
  </section>
  
  </div>
  
  @push('scripts')
  
  @endpush
  