<div class="navigation navigation-main">
    <a href="#" class="open-login"><i class="icon icon-user"></i></a>
    <a href="#" class="open-search"><i class="icon icon-magnifier"></i></a>
    <a href="#" class="open-cart"><i class="icon icon-cart"></i> <span>4</span></a>
    <a href="#" class="open-menu"><i class="icon icon-menu"></i></a>
    <div class="floating-menu">
        <!--mobile toggle menu trigger-->
        <div class="close-menu-wrapper">
            <span class="close-menu"><i class="icon icon-cross"></i></span>
        </div>
        <ul>
            <li><a href="/">Beranda</a></li>

            <li>
                <a href="/kategori">Kategori <span class="open-dropdown"><i class="fa fa-angle-down"></i></span></a>
                <div class="navbar-dropdown">
                    <div class="navbar-box">
                        <div class="box-full">
                            <div class="box clearfix">
                                <div class="row">
                                    <div class="clearfix">
                                        @forelse($brands as $brand)
                                            <div class="col-lg-3">
                                                <ul>
                                                    <li class="label"><i class="icon icon-star"></i> {{ $brand->name }}</li>
                                                    <li><a href="#">Laptops</a></li>
                                                    <li><a href="#">Desktops</a></li>
                                                    <li><a href="#">PC Gaming</a></li>
                                                    <li><a href="#">Printers & Supplies</a></li>
                                                    <li class="more"><a href="#"><i class="icon icon-chevron-right"></i> More</a></li>
                                                </ul>
                                            </div>
                                        @empty
                                            no data
                                        @endforelse
                                     
                                    </div>
                                    <div class="clearfix">
                                        <div class="col-lg-3">
                                            <ul>
                                                <li class="label"><i class="icon icon-star"></i> Freezers</li>
                                                <li><a href="#">Mini Freezers</a></li>
                                                <li><a href="#">Ice Makers</a></li>
                                                <li><a href="#">Chest Freezers</a></li>
                                                <li><a href="#">Upright Freezers</a></li>
                                                <li class="more"><a href="#"><i class="icon icon-chevron-right"></i> More</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-lg-3">
                                            <ul>
                                                <li class="label"><i class="icon icon-star"></i> TV & Video</li>
                                                <li><a href="#">TVs</a></li>
                                                <li><a href="#">DVD & Blu-ray Players</a></li>
                                                <li><a href="#">Home Audio & Theater</a></li>
                                                <li><a href="#">TVs Accessories</a></li>
                                                <li class="more"><a href="#"><i class="icon icon-chevron-right"></i> More</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-lg-3">
                                            <ul>
                                                <li class="label"><i class="icon icon-star"></i> Cell phones</li>
                                                <li><a href="#">Straight Talk Phones</a></li>
                                                <li><a href="#">Unlocked Phones</a></li>
                                                <li><a href="#">Contract Phones</a></li>
                                                <li><a href="#">No-Contract Phones</a></li>
                                                <li class="more"><a href="#"><i class="icon icon-chevron-right"></i> More</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-lg-3">
                                            <ul>
                                                <li class="label"><i class="icon icon-star"></i> iPad & Tablets</li>
                                                <li><a href="#">iPad</a></li>
                                                <li><a href="#">Windows Tablets</a></li>
                                                <li><a href="#">Android Tablets</a></li>
                                                <li><a href="#">Accessories</a></li>
                                                <li class="more"><a href="#"><i class="icon icon-chevron-right"></i> More</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            
            <li><a href="/produk">Produk</a></li>
            
            <li><a href="/kontak">Kontak</a></li>

            <li><a href="/tentang">Tentang</a></li>


        </ul>
    </div>
</div>