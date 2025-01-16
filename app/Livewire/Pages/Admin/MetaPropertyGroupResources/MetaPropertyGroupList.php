<?php

namespace App\Livewire\Pages\Admin\MetaPropertyGroupResources;

use Livewire\Component;

class MetaPropertyGroupList extends Component
{
  public function render()
  {
    return view('livewire.pages.admin.meta-property-group-resources.meta-property-group-list')
      ->title($this->title);
  }

  public string $title = 'Meta Property Group';
  public string $url = '/meta-property-groups';
}
