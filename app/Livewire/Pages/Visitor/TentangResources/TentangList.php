<?php

namespace App\Livewire\Pages\Visitor\TentangResources;

use Livewire\Component;

class TentangList extends Component
{
    public function render()
    {
        return view('livewire.pages.tentang-resources.tentang-list')
        ->layout('components.layouts.app_visitor')
        ->title($this->title);
    }
}
