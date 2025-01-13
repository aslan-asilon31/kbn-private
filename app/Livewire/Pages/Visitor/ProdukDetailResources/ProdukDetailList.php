<?php

namespace App\Livewire\Pages\Visitor\ProdukDetailResources;

use Livewire\Component;
use App\Models\Product;   
use App\Models\ProductContent;   
use App\Models\ProductCategoryFirst;
use App\Models\ProductCategorySecond;  
use Illuminate\Support\Facades\DB; 


class ProdukDetailList extends Component
{
    public function render()
    {
        return view('livewire.pages.produk-detail-resources.produk-detail-list')
        ->layout('components.layouts.app_visitor')
        ->title($this->title);
    }

    public string $title = 'Produk detail';
    public $brand;  
    public $product;  
    public $id;     

    
    public function mount($id)  
    {  
        $this->id = $id;  
        $this->product = Product::query()  
        ->join('product_contents', 'product_contents.product_id', '=', 'products.id') // Pastikan nama tabel konsisten  
        ->select([  
            'products.id AS product_id',  
            'product_contents.id AS content_id', 
            'products.name AS product_name',  
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
        ])  
        ->where('products.id', $this->id)  
        ->first();

        $this->brand = ProductCategoryFirst::query()
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
        ])
        ->where('product_category_firsts.id', $this->product->id)
        ->first();

    } 


}
