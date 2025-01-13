<?php

namespace App\Livewire\Pages\Visitor\ProdukBrandResources;

use Livewire\Component;
use App\Models\Product;   
use App\Models\ProductContent;   
use App\Models\ProductCategoryFirst;
use App\Models\ProductCategorySecond;  
use Illuminate\Support\Facades\DB; 

class ProdukBrandList extends Component
{  
    public string $title = 'Produk Brand';    
    public $id;     
    public $brand;     
    public $brand_products = [];     
    public $product_category_second;     
    public $product_contents;   
  
    public function mount($id)  
    {  
        $this->id = $id;  

        $this->brand = ProductCategoryFirst::where('id',$this->id)->first();

        $this->brand_products = Product::query()  
        ->join('product_contents', 'product_contents.product_id', '=', 'products.id') // Pastikan nama tabel konsisten  
        ->select([  
            'products.id AS product_id',  
            'product_contents.id AS content_id', // Tambahkan alias untuk menghindari kebingungan  
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
        ])  
        ->where('products.product_category_first_id', $this->id)  
        ->get();  

    }  

  
    public function render()  
    {  
        return view('livewire.pages.produk-brand-resources.produk-brand-list')  
        ->layout('components.layouts.app_visitor')
        ->title($this->title);
    }  
} 