<?php

namespace App\Livewire\Pages\Admin\ProductContentResources;

use App\Livewire\Pages\ProductContentResources\Forms\ProductContentVideoForm;
use Livewire\Component;

class ProductContentVideoCrud extends Component
{
  public function render()
  {
    return view('livewire.pages.admin.product-content-resources.product-content-video-crud')
      ->title($this->title);
  }

  public string $title = 'Product Content Display';
  public string $url = '/product-contents';
  public string $redirectUrl = '/product-content-videos';

  use \Livewire\WithFileUploads;
  use \App\Helpers\ImageUpload\Traits\WithImageUpload;
  use \App\Helpers\VideoUpload\Traits\WithVideoUpload;
  use \App\Helpers\FormHook\Traits\WithFormHook;
  use \Mary\Traits\Toast;

  #[\Livewire\Attributes\Locked]
  public null|string $id = null;
  #[\Livewire\Attributes\Locked]
  public null|string $productContentVideoId = null;

  
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
  
  private  $model = \App\Models\ProductContent::class;
  public ProductContentVideoForm $masterForm;

  #[\Livewire\Attributes\Locked]
  private string $uploadFolderName = 'files/images/product-content-videos/';
  private string $baseImageName = 'product-content-video-image';
  private string $baseVideoName = 'product-content-video';

  public bool $myModalProductContentVideoForm = false;

  public string $mode = 'create';

  public function setMode(string $mode)
  {
      $this->mode = $mode;
      $this->isReadonly = $mode === 'show';
  }

  public array $productContent = [];

  public function edit()
  {
    $this->productContent = $this->model::with([
      'product',
      'productContentVideos' => function ($q) {
        $q->orderBy('product_content_videos.ordinal', 'asc');
      }
    ])
      ->findOrFail($this->id)
      ->toArray();
  }

  public function createProductContentVideo()
  {
    $this->setMode('create');
    $this->masterForm->reset();
    $this->productContentVideoId = null;

    $this->masterForm->ordinal = (int) $this->model::findOrFail($this->id)
      ?->productContentVideos()
      ?->max('ordinal') + 1;


    $this->masterForm->name = $this->productContent['product']['name'] . ' Display Image ' . sprintf('%02d', $this->masterForm->ordinal);

    $this->myModalProductContentVideoForm = true;


  }

  public function storeProductContentVideo()
  {
    $validatedForm = $this->validate(
      $this->masterForm->rules($this->productContentVideoId),
      [],
      $this->masterForm->attributes()
    )['masterForm'];

    $folderName = 'files/images/product-contents/' . e($this->id) . '/product-content-videos';
    $newImageUrl = $validatedForm['thumbnail_url'];
    $newImageName = $this->id . '_' . $this->baseImageName;
    $oldImageUrl = null;
    $validatedForm['thumbnail_url'] = $this->saveImage(
      $folderName,
      $newImageUrl,
      $newImageName,
      $oldImageUrl
    );

    $newVideoUrl = $validatedForm['video_url'];
    $newVideoName = $this->id . '_' . $this->baseVideoName;
    $oldVideoUrl = null;

    $validatedForm['video_url'] = $this->saveVideo(
      $folderName,
      $newVideoUrl,
      $newVideoName,
      $oldVideoUrl
    );

    $validatedForm['created_by'] = auth()->user()->username;

    $record = $this->model::findOrFail($this->id);
    $record->productContentVideos()
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

  public function showProductContentVideo($productContentVideoId)
  {
    $this->productContentVideoId = $productContentVideoId;
    $record = $this->model::findOrFail($this->id)
      ->productContentVideos()
      ->findOrFail($productContentVideoId)
      ->toArray();

    $this->masterForm->fill($record);
    $this->readonly = true;
    $this->myModalProductContentVideoForm = true;
    $this->setMode('show');

  }

  public function editProductContentVideo($productContentVideoId)
  {
    $this->productContentVideoId = $productContentVideoId;
    $record = $this->model::findOrFail($this->id)
      ->productContentVideos()
      ->findOrFail($productContentVideoId)
      ->toArray();

    $this->masterForm->fill($record);
    $this->myModalProductContentVideoForm = true;
    $this->setMode('edit');

  }


  public function updateProductContentVideo($productContentVideoId)
  {
    $validatedForm = $this->validate(
      $this->masterForm->rules($this->productContentVideoId),
      [],
      $this->masterForm->attributes()
    )['masterForm'];

    $record = $this->model::findOrFail($this->id)
      ->productContentVideos()
      ->findOrFail($productContentVideoId);

    if($validatedForm['thumbnail_url']){
      $folderName = 'files/product-contents/' . e($this->id) . '/product-content-videos';
      $newImageUrl = $validatedForm['thumbnail_url'];
      $newImageName = $this->id . '_' . $this->baseImageName;
      $oldImageUrl = $record->thumbnail_url;
      $validatedForm['thumbnail_url'] = $this->saveImage(
        $folderName,
        $newImageUrl,
        $newImageName,
        $oldImageUrl
      );
    }else{
      unset($validatedForm['thumbnail_url']);
    }


    if($validatedForm['video_url']){
      $newVideoUrl = $validatedForm['video_url'];
      $newVideoName = $this->id . '_' . $this->baseVideoName;
      $oldVideoUrl = $record->video_url;
      $validatedForm['video_url'] = $this->saveVideo(
        $folderName,
        $newVideoUrl,
        $newVideoName,
        $oldVideoUrl
      );
    }

    $validatedForm['updated_by'] = auth()->user()->username;

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


  public function deleteProductContentVideo($productContentVideoId)
  {
    $record = $this->model::findOrFail($this->id)
      ->productContentVideos()
      ->findOrFail($productContentVideoId);

    $this->deleteImage($record->thumbnail_url);
    $this->deleteVideo($record->video_url);

    $record->delete();

    $this->toast(
      type: 'success',
      title: 'Data has been deleted',
      description: "data has been stored",               
      position: 'toast-top toast-end',    
      icon: 'o-information-circle',      
      css: 'alert-info',                  
      timeout: 3000,                      
      redirectTo: null                    
  );

    $this->redirect($this->redirectUrl . "/edit/{$this->id}", true);
  }
}
