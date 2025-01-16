<?php

namespace App\Livewire\Pages\Admin\ProductCategorySecondResources;

use App\Livewire\Pages\Admin\ProductCategorySecondResources\Forms\ProductCategorySecondForm;
use Livewire\Component;

class ProductCategorySecondList extends Component
{
  public $title = 'Product Category Second';
  public string $url = '/product-category-seconds';

  public function render()
  {
    return view('livewire.pages.admin.product-category-second-resources.product-category-second-list')
    ->title($this->title);

  }
}
