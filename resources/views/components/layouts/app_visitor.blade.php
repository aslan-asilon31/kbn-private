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

        @livewire('pages.visitor.partials.header')

        <!-- ========================  Header content ======================== -->
        {{ $slot }}

        <!-- ================== Footer  ================== -->

        @livewire('pages.visitor.partials.footer')

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