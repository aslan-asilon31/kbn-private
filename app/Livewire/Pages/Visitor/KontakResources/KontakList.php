<?php

namespace App\Livewire\Pages\Visitor\KontakResources;

use Livewire\Component;

class KontakList extends Component
{
    public function render()
    {
        return view('livewire.pages.kontak-resources.kontak-list')
        ->layout('components.layouts.app_visitor')
        ->title($this->title);
    }

    public string $title = 'Kontak';  


}
