<?php

namespace App\Livewire\Pages\AuthenticationResources;

use Livewire\Component;

class Login extends Component
{
  public $title = 'Login';

  public function render()
  {
    return view('livewire.pages.authentication-resources.login')
      ->layout('livewire.layouts.auth')
      ->title($this->title);
  }
}
