<?php

namespace App\Livewire\Pages\Visitor\Partials;

use Livewire\Component;
use App\Models\ProductBrand;
class Header extends Component
{

    public $brands = [];

    
    public function mount()
    {
        $this->brands = ProductBrand::all();
    }


    public function render()
    {
        return view('livewire.pages.visitor.partials.header');
    }
}
