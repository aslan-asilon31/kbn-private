<?php

namespace App\Livewire\Pages\DashboardResources;

use Livewire\Component;

class Dashboard extends Component
{
  public $title = 'Dashboard';


  public function render()
  {
    return view('livewire.pages.dashboard-resources.dashboard')
      ->title($this->title);
  }
}
