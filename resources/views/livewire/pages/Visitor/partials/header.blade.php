<div>
    <nav>
    
        <div class="clearfix">
    
            <a href="/" class="logo">  
                <img style="width:50px; padding:2px;" class="" src="{{ asset('frontend/assets/images/logo.png') }}" alt="Logo kbn" />  
            </a>  
            
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