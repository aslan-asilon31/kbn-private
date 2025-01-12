<?php

namespace App\Livewire\Pages\ProdukResources;

use Livewire\Component;
use App\Models\Product;

class ProdukList extends Component
{
    public string $title = 'Product';
    public $product ;
  
    public function show()
    {
      $this->product = Product::query()
      ->join('product_category_firsts', 'products.product_category_first_id', 'product_category_firsts.id')
      ->join('product_content', 'products.id', '=', 'product_content.product_id')
      ->select([
        'products.id',
        'products.name',
        'products.selling_price',
        'products.image_url',
        'product_category_firsts.name AS product_category_firsts_name',
        'products.created_by',
        'products.updated_by',
        'products.created_at',
        'products.updated_at',
        'products.is_activated',
        'product_content.title AS product_content_title',
      ]);

    }

    public function render()
    {
        return view('livewire.pages.produk-resources.produk-list');
    }
}
