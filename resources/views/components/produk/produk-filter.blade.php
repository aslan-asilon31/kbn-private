<div>
    <div class="col-md-3 col-xs-12">
        <div class="filters">

            <!--Availability-->
            <div class="filter-box active">  
                <div class="title">  
                    Availability  
                </div>  
                <div class="filter-content">  
                    <x-checkbox label="In stock" wire:model="available" hint="(152)" id="availableId1" checked="checked" />  
                    <x-checkbox label="1 Week" wire:model="available1" hint="(100)" id="availableId2" />  
                    <x-checkbox label="2 Weeks" wire:model="available2" hint="(80)" id="availableId3" />  
                </div>  
            </div>  

          
            <!--close filters on mobile / update filters-->
            <div class="toggle-filters-close btn btn-main">
                Update search
            </div>

        </div> <!--/filters-->
    </div>
</div>