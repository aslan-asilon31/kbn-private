<?php

namespace App\Livewire\Pages\HomeResources;

use Livewire\Component;
use App\Models\Product;   
use App\Models\ProductContent;   
use App\Models\ProductCategoryFirst;
use App\Models\ProductCategorySecond;  
use Illuminate\Support\Facades\DB; 

class HomeList extends Component
{

    public string $title = 'Home';  
    public $product_category_first;   
    public $product_category_second;   
    public $product_contents;   
  
    public function mount() 
    {  
        $this->product_category_first = ProductCategoryFirst::query()
        ->join('product_category_seconds', 'product_category_firsts.product_category_second_id', 'product_category_seconds.id')
        ->select([
          'product_category_firsts.id',
          'product_category_firsts.name',
          'product_category_seconds.name AS product_category_seconds_name',
          'product_category_firsts.slug',
          'product_category_firsts.image_url',
          'product_category_firsts.header_image_url',
          'product_category_firsts.created_by',
          'product_category_firsts.updated_by',
          'product_category_firsts.created_at',
          'product_category_firsts.updated_at',
          'product_category_firsts.is_activated',
        ])->get();

        $this->product_category_second = ProductCategorySecond::query()->get(); 

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
  


    public function render()
    {
        return view('livewire.pages.home-resources.home-list')
        ->title($this->title);  

    }
}
