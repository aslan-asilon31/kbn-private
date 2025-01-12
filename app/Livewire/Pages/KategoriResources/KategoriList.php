<?php

namespace App\Livewire\Pages\KategoriResources;

use Livewire\Component;

class KategoriList extends Component
{
    public function render()
    {
        return view('livewire.pages.kategori-resources.kategori-list')
        ->title($this->title);
    }

    public string $title = 'Kategori';
    

}
