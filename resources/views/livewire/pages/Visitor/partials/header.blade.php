<div>
    <nav>
    
        <div class="clearfix">
    
            <a href="index.html" class="logo "><img src="{{ asset('frontend/assets/images/logo.png') }}" alt="" /></a>
    
            <!-- ==========  Pre navigation ========== -->
            <x-pre-navigation/>
    
    
            <!-- ==========  Top navigation ========== -->
    
            <x-top-navigation/>
    
            <!-- ==========  Main navigation ========== -->
    
            <x-main-navigation :brands="$brands"/>
    
    
            <!-- ==========  Search wrapper ========== -->
    
            <x-search-wrapper/>
    
    
            <!-- ==========  Login wrapper ========== -->
    
            <x-login-wrapper/>
    
    
            <!-- ==========  Cart wrapper ========== -->
    
            <x-card-wrapper/>
    
        </div>
    </nav>
</div>