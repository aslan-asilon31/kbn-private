<?php

namespace App\Livewire\Pages\Admin\ProductContentResources;

use App\Livewire\Pages\Contents\ProductContentResources\Forms\ProductContentMetaForm;

use App\Models\MetaProperty;
use Livewire\Component;
use Illuminate\Support\Facades\Http;
use Illuminate\Http\Request;
use GuzzleHttp\Client;
use Mary\Traits\Toast;

class ProductContentMetaCrud extends Component
{

  public function render()
  {
    return view('livewire.pages.admin.product-content-resources.product-content-meta-crud')
      ->title($this->title);
  }

  public string $selectedTab  = '/product-content-metas';
  public string $redirectUrl = '/product-content-metas';
  
  use \App\Helpers\FormHook\Traits\WithFormHook;
  use \Livewire\WithFileUploads;
  use \App\Helpers\ImageUpload\Traits\WithImageUpload;
  use \Mary\Traits\Toast;

  public array $meta_property_next = [];

  #[\Livewire\Attributes\Locked]
  public string $title = 'Product Content Meta';

  #[\Livewire\Attributes\Locked]
  public string $url = '/product-content-metas';

  #[\Livewire\Attributes\Locked]
  private string $baseFolderName = '/files/images/product-content-metas';

  #[\Livewire\Attributes\Locked]
  private string $baseImageName = 'product_content_meta_image';

  #[\Livewire\Attributes\Locked]
  public string $id = '';

  #[\Livewire\Attributes\Locked]
  public string $readonly = '';

  #[\Livewire\Attributes\Locked]
  public bool $isReadonly = false;

  #[\Livewire\Attributes\Locked]
  public string $disabled = '';

  #[\Livewire\Attributes\Locked]
  public bool $isDisabled = false;

  #[\Livewire\Attributes\Locked]
  public array $options = [];


  #[\Livewire\Attributes\Locked]
  protected $masterModel = \App\Models\ProductCategorySecond::class;

 
  public bool $myModalProductContentMetaForm = false;
  
  #[\Livewire\Attributes\Locked]
  public null|string $productContentMetaId = null;
  private string $model = \App\Models\ProductContent::class;


  public ProductContentMetaForm $masterForm;

  private string $uploadFolderName = 'files/images/product-content-metas';

  public array $productContent = [];

  public array $meta_properties = [];
  public array $response = [];


  public function edit()
  {
    $this->productContent = $this->model::with([
      'product',
      'productContentMetas' => function ($q) {
        $q->orderBy('product_content_metas.ordinal', 'asc');
        $q->with('metaProperty.metaPropertyGroup');
      }
    ])
      ->findOrFail($this->id)
      ->toArray();

  }

  public function createProductContentMeta()
  {
    $this->productContentMetaId = null;
    $this->masterForm->reset();

    $this->masterForm->ordinal = (int) $this->model::findOrFail($this->id)
    ?->productContentMetas()
    ?->max('ordinal') + 1;

    $this->myModalProductContentMetaForm = true;


    $this->productContent = $this->model::with([
      'product',
      'productContentMetas' => function ($q) {
        $q->orderBy('product_content_metas.ordinal', 'asc');
        $q->with('metaProperty.metaPropertyGroup');
      }
    ])
      ->findOrFail($this->id)
      ->toArray();

      $this->productContent['meta_property_next'] = [
        'title' => [
            'name' => 'title',
            'value' => 'title',
        ],
        'description' => [
            'name' => 'description',
            'value' => 'description',
        ],
        'keywords' => [
            'name' => 'keywords',
            'value' => 'keywords',
        ],
    ];



  }

  public function storeProductContentMeta()
  {
      // Validasi input
      $validatedForm = $this->validate(
          $this->masterForm->rules($this->productContentMetaId),
          [],
          $this->masterForm->attributes()
      )['masterForm'];
  
      // Temukan record yang sesuai
      $record = $this->model::findOrFail($this->id);
  
      // Tambahkan informasi pengguna yang membuat
      $validatedForm['created_by'] = auth()->user()->username;
  
      // Cek apakah data sudah ada
      $existingMeta = $record->productContentMetas()
          ->where('meta_property_id', $validatedForm['meta_property_id'])
          ->first();
  
      // Jika data sudah ada, Anda bisa memilih untuk memperbarui atau mengabaikan
      if ($existingMeta) {
          // Jika ingin memperbarui, uncomment bagian ini
          /*
          $existingMeta->update($validatedForm);
          $this->toast(
              type: 'success',
              title: 'Data has been updated',
              description: "Data '{$validatedForm['meta_property_id']}' has been updated.",
              position: 'toast-top toast-end',
              icon: 'o-information-circle',
              css: 'alert-info',
              timeout: 3000,
              redirectTo: null
          );
          */
          
          // Jika ingin mengabaikan insert dan memberikan umpan balik
          $this->toast(
              type: 'warning',
              title: 'Data already exists',
              description: "Data '{$validatedForm['meta_property_id']}' already exists.",
              position: 'toast-top toast-end',
              icon: 'o-information-circle',
              css: 'alert-info',
              timeout: 3000,
              redirectTo: null
          );
  
      } else {
          // Jika data belum ada, lakukan insert
          $record->productContentMetas()->create($validatedForm);
  
          $this->toast(
              type: 'success',
              title: 'Data has been stored',
              description: "Data has been stored.",
              position: 'toast-top toast-end',
              icon: 'o-information-circle',
              css: 'alert-info',
              timeout: 3000,
              redirectTo: null
          );
      }
  
      // Tutup modal
      $this->myModalProductContentMetaForm = false;
  
      // Redirect ke halaman edit
      $this->redirect($this->redirectUrl . "/edit/{$this->id}", true);
  }
  


  public function editProductContentMeta($productContentMetaId)
  {
      $this->productContentMetaId = $productContentMetaId;

      $record = $this->model::findOrFail($this->id)
          ->productContentMetas()
          ->findOrFail($productContentMetaId)
          ->toArray();

      // Fill the form with the record data
      $this->masterForm->fill($record);
      $this->myModalProductContentMetaForm = true;
  }


  public function showProductContentMeta($productContentMetaId)
  {
      $this->productContentMetaId = $productContentMetaId;

      $record = $this->model::findOrFail($this->id)
          ->productContentMetas()
          ->findOrFail($productContentMetaId)
          ->toArray();

      $this->masterForm->fill($record);
      $this->myModalProductContentMetaForm = true;

  }


  public function updateProductContentMeta()
  {
    $validatedForm = $this->validate(
      $this->masterForm->rules($this->productContentMetaId),
      [],
      $this->masterForm->attributes()
    )['masterForm'];

    $validatedForm['updated_by'] = auth()->user()->username;

    $record = $this->model::findOrFail($this->id)
      ->productContentMetas()
      ->findOrFail($this->productContentMetaId)
      ->update($validatedForm);


      $this->toast(
        type: 'success',
        title: 'Data has been stored',
        description: "data has been updated",               
        position: 'toast-top toast-end',    
        icon: 'o-information-circle',      
        css: 'alert-info',                  
        timeout: 3000,                      
        redirectTo: null                    
    );

    $this->redirect($this->redirectUrl . "/edit/{$this->id}", true);
  }

  public function deleteProductContentMeta($productContentMetaId)
  {
    $record = $this->model::findOrFail($this->id)
      ->productContentMetas()
      ->findOrFail($productContentMetaId);

    $record->delete();

    $this->toast(
      type: 'success',
      title: 'Data has been stored',
      description: "data has been deleted",               
      position: 'toast-top toast-end',    
      icon: 'o-information-circle',      
      css: 'alert-info',                  
      timeout: 3000,                      
      redirectTo: null                    
  );

    $this->redirect($this->redirectUrl . "/edit/{$this->id}", true);
  }


  public function updatedMasterFormMetaPropertyId($metaPropertyId)
  {
    $metaProperty = MetaProperty::find($metaPropertyId);
    $this->masterForm->ordinal = $metaProperty?->ordinal ? $metaProperty?->ordinal : 0;
  }
}
