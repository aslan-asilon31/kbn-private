<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- Mobile Web-app fullscreen -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="mobile-web-app-capable" content="yes">

    <!-- Meta tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">

    <!--Title-->
    <title>{{ $title }}</title>

    <!--CSS bundle -->
    <link rel="stylesheet" media="all" href="{{ asset('frontend/css/bootstrap.css') }}" />
    <link rel="stylesheet" media="all" href="{{ asset('frontend/css/animate.css') }}" />
    <link rel="stylesheet" media="all" href="{{ asset('frontend/css/font-awesome.css') }}" />
    <link rel="stylesheet" media="all" href="{{ asset('frontend/css/linear-icons.css') }}" />
    <link rel="stylesheet" media="all" href="{{ asset('frontend/css/magnific-popup.css') }}" />
    <link rel="stylesheet" media="all" href="{{ asset('frontend/css/owl.carousel.css') }}" />
    <link rel="stylesheet" media="all" href="{{ asset('frontend/css/ion-range-slider.css') }}" />
    <link rel="stylesheet" media="all" href="{{ asset('frontend/css/theme.css') }}" />

    <!--Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&amp;subset=latin-ext" rel="stylesheet">

    @vite(['resources/css/app.css', 'resources/js/app.js'])
    @livewireStyles
</head>

<body>

    <!-- <div class="page-loader"></div> -->

    <div class="wrapper">

        <!-- ======================== Navigation ======================== -->

        <nav>

            <div class="clearfix">

                <a href="index.html" class="logo "><img src="{{ asset('frontend/assets/images/logo.png') }}" alt="" /></a>

                <!-- ==========  Pre navigation ========== -->
                <x-pre-navigation/>


                <!-- ==========  Top navigation ========== -->

                <x-top-navigation/>

                <!-- ==========  Main navigation ========== -->

                <x-main-navigation/>


                <!-- ==========  Search wrapper ========== -->

                <x-search-wrapper/>


                <!-- ==========  Login wrapper ========== -->

                <x-login-wrapper/>


                <!-- ==========  Cart wrapper ========== -->

                <x-card-wrapper/>

            </div>
        </nav>


        <!-- ========================  Header content ======================== -->
        {{ $slot }}

        <!-- ================== Footer  ================== -->

        <footer>
            <!--footer showroom-->
            <div class="footer-showroom hidden">
                <div class="row">
                    <div class="col-sm-8">
                        <h2>Visit our showroom</h2>
                        <p>200 12th Ave, New York, NY 10001, USA</p>
                        <p>Mon - Sat: 10 am - 6 pm &nbsp; &nbsp; | &nbsp; &nbsp; Sun: 12pm - 2 pm</p>
                    </div>
                    <div class="col-sm-4 text-center">
                        <a href="#" class="btn btn-clean"><span class="icon icon-map-marker"></span> Get directions</a>
                        <div class="call-us h4"><span class="icon icon-phone-handset"></span> 333.278.06622</div>
                    </div>
                </div>
            </div>

            <!--footer links-->
            <div class="footer-links">
                <div class="row">
                    <div class="col-sm-4 col-md-2">
                        <h5>Browse by</h5>
                        <ul>
                            <li><a href="#">Brand</a></li>
                            <li><a href="#">Product</a></li>
                            <li><a href="#">Category</a></li>
                            <li><a href="#">Projects</a></li>
                            <li><a href="#">Sales</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-4 col-md-2">
                        <h5>Quick links</h5>
                        <ul>
                            <li><a href="#">In-Store Pickup</a></li>
                            <li><a href="#">Gift Cards</a></li>
                            <li><a href="#">Afterpay</a></li>
                            <li><a href="#">Shop</a></li>
                            <li><a href="#">Store Locator</a></li>
                            <li><a href="#">FAQ</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-4 col-md-2">
                        <h5>Order info</h5>
                        <ul>
                            <li><a href="#">Order Status </a></li>
                            <li><a href="#">Payments</a></li>
                            <li><a href="#">Shipping</a></li>
                            <li><a href="#">Returns</a></li>
                            <li><a href="#">Exchanges</a></li>
                            <li><a href="#">Order history</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-4 col-md-2">
                        <h5>Customer service</h5>
                        <ul>
                            <li><a href="#">Help Center</a></li>
                            <li><a href="#">Product Recalls</a></li>
                            <li><a href="#">Shipping</a></li>
                            <li><a href="#">Feedback</a></li>
                            <li><a href="#">Store Pickup</a></li>
                            <li><a href="#">Contact us</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-12 col-md-4">
                        <h5>Sign up for our newsletter</h5>
                        <p><i>Add your email address to sign up for our monthly emails and to receive promotional offers.</i></p>
                        <div class="form-group form-newsletter">
                            <input class="form-control" type="text" name="email" value="" placeholder="Email address" />
                            <input type="submit" class="btn btn-main btn-sm" value="Subscribe" />
                        </div>
                    </div>
                </div>
            </div>

            <!--footer social-->

            <div class="footer-social">
                <div class="row">
                    <div class="col-sm-6">
                        <a href="#" target="_blank"><i class="fa fa-download"></i> Download Lager</a> &nbsp; | &nbsp; <a href="#">Sitemap</a> &nbsp; | &nbsp; <a href="#">Privacy policy</a>
                    </div>
                    <div class="col-sm-6 links">
                        <ul>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                            <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>

    </div> <!--/wrapper-->



    
  <script src="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/1.6.1/cropper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/sortablejs@1.15.1/Sortable.min.js"></script>

    <!--JS files-->
    <script src="{{ asset('frontend/js/jquery.min.js') }}"></script>
    <script src="{{ asset('frontend/js/jquery.bootstrap.js') }}"></script>
    <script src="{{ asset('frontend/js/jquery.magnific-popup.js') }}"></script>
    <script src="{{ asset('frontend/js/jquery.owl.carousel.js') }}"></script>
    <script src="{{ asset('frontend/js/jquery.ion.rangeSlider.js') }}"></script>
    <script src="{{ asset('frontend/js/main.js') }}"></script>
    @livewireScripts
</body>

</html>