<?php

namespace App\Livewire\Pages\KontakResources;

use Livewire\Component;

class KontakList extends Component
{
    public function render()
    {
        return view('livewire.pages.kontak-resources.kontak-list')
        ->title($this->title);
    }

    public string $title = 'Kontak';  


}
