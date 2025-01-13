<?php

namespace App\Livewire\Pages\Visitor\ProdukResources;

use Livewire\Component;
use App\Models\Product;
use App\Models\ProductContent;


class ProdukList extends Component
{
    public string $title = 'Product';
    public $product ;
    public $product_contents;
    public $selectedProductId;   
  
    public function mount() 
    { 
      $this->product_contents =  ProductContent::query()
        ->join('products', 'product_contents.product_id', 'products.id')
        ->select([
          'product_contents.id',
          'products.name AS products_name',
          'products.selling_price AS product_selling_price',
          'products.discount_value AS product_discount_value',
          'products.nett_price AS product_nett_price',
          'product_contents.title',
          'product_contents.slug',
          'product_contents.url',
          'product_contents.image_url',
          'product_contents.created_by',
          'product_contents.updated_by',
          'product_contents.created_at',
          'product_contents.updated_at',
          'product_contents.is_activated',
      ])->get();

    }
  

    public function showProduct($id)  
    {  
        $this->selectedProductId = $id; // Set ID produk yang dipilih  
        $this->product = ProductContent::find($id); 
        
    }  

    public function render()
    {
        return view('livewire.pages.produk-resources.produk-list')
        ->layout('components.layouts.app_visitor')
        ->title($this->title);
      }
  

}
