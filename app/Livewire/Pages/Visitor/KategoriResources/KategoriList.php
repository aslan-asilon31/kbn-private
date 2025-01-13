<?php

namespace App\Livewire\Pages\Visitor\KategoriResources;

use Livewire\Component;

class KategoriList extends Component
{
    public function render()
    {
        return view('livewire.pages.kategori-resources.kategori-list')
        ->layout('components.layouts.app_visitor')
        ->title($this->title);
    }

    public string $title = 'Kategori';
    

}
