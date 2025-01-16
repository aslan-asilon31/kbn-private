<?php

namespace App\Livewire\Pages\Admin\ProductContentResources;

use App\Livewire\Pages\ProductContentResources\Forms\ProductContentSpecificationForm;
use Livewire\Component;


class ProductContentSpecificationCrud extends Component
{
  public function render()
  {
    return view('livewire.pages.admin.product-content-resources.product-content-specification-crud')
      ->title($this->title);
  }

  public string $title = 'Product Content Specification';
  public string $url = '/product-contents';
  public string $redirectUrl = '/product-content-specifications';

  use \App\Helpers\FormHook\Traits\WithFormHook;

  #[\Livewire\Attributes\Locked]
  public null|string $id = null;
  #[\Livewire\Attributes\Locked]
  public null|string $productContentSpecificationId = null;
  private string $model = \App\Models\ProductContent::class;
  use \Mary\Traits\Toast;
  
  
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
  
  public ProductContentSpecificationForm $masterForm;

  private string $uploadFolderName = 'files/images/product-content-specifications';
  private string $baseImageName = 'product_content_specification_image';
  
  public bool $myModalProductContentSpecificationForm = false;

  public array $productContent = [];

  public function createProductContentSpecification()
  {
    $this->productContentSpecificationId = null;
    $this->masterForm->reset();
    $this->masterForm->ordinal = (int) $this->model::findOrFail($this->id)
      ?->productContentSpecifications()
      ?->max('ordinal') + 1;
    $this->myModalProductContentSpecificationForm = true;
  }

  public function storeProductContentSpecification()
  {
    $validatedForm = $this->validate(
      $this->masterForm->rules($this->productContentSpecificationId),
      [],
      $this->masterForm->attributes()
    )['masterForm'];

    $validatedForm['created_by'] = auth()->user()->username;

    $record = $this->model::findOrFail($this->id);
    $record->productContentSpecifications()
      ->create($validatedForm);

    $this->toast(
        type: 'success',
        title: 'Data has been stored',
        description: "data has been stored",               
        position: 'toast-top toast-end',    
        icon: 'o-information-circle',      
        css: 'alert-info',                  
        timeout: 3000,                      
        redirectTo: null                    
    );

    $this->redirect($this->redirectUrl . "/edit/{$this->id}", true);
  }

  public function edit()
  {
    $this->productContent = $this->model::with([
      'product',
      'productContentSpecifications' => function ($q) {
        $q->orderBy('product_content_specifications.ordinal', 'asc');
      }
    ])
      ->findOrFail($this->id)
      ->toArray();

    $this->masterForm->fill($this->productContent);

  }

  public function editProductContentSpecification($productContentSpecificationId)
  {
    $this->productContentSpecificationId = $productContentSpecificationId;

    $record = $this->model::findOrFail($this->id)
      ->productContentSpecifications()
      ->findOrFail($this->productContentSpecificationId)
      ->toArray();

    $this->masterForm->fill($record);
    $this->myModalProductContentSpecificationForm = true;
  }

  public function updateProductContentSpecification()
  {
    $validatedForm = $this->validate(
      $this->masterForm->rules($this->productContentSpecificationId),
      [],
      $this->masterForm->attributes()
    )['masterForm'];

    $validatedForm['updated_by'] = auth()->user()->username;

    // $record = $this->model::findOrFail($this->id);

    $record = $this->model::findOrFail($this->id)
    ->productContentSpecifications()
    ->findOrFail($this->productContentSpecificationId);
    $record->update($validatedForm);


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

  public function deleteProductContentSpecification($productContentSpecificationId)
  {
    $record = $this->model::findOrFail($this->id)
      ->productContentSpecifications()
      ->findOrFail($productContentSpecificationId);

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
}
