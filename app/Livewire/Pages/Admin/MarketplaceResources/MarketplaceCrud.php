<?php

namespace App\Livewire\Pages\Admin\MarketplaceResources;

use App\Livewire\Pages\Contents\MarketplaceResources\Forms\MarketplaceForm;
use App\Models\Marketplace;
use Livewire\Component;

class MarketplaceCrud extends Component
{
  
  public function render()
  {
    return view('livewire.pages.admin.marketplace-resources.marketplace-crud')
      ->title($this->title);
  }

  public string $title = 'Market Places';
  public string $url = '/marketplaces';

  use \Livewire\WithFileUploads;
  use \App\Helpers\ImageUpload\Traits\WithImageUpload;
  use \App\Helpers\FormHook\Traits\WithFormHook;

  #[\Livewire\Attributes\Locked]
  public null|string $id = null;
  private string $model = Marketplace::class;
  public MarketplaceForm $masterForm;

  private string $uploadFolderName = 'files/images/marketplaces';
  private string $baseImageName = 'marketplace_image';

  public function create()
  {
    $this->masterForm->reset();
  }

  public function store()
  {
    $validatedForm = $this->validate(
      $this->masterForm->rules($this->id),
      [],
      $this->masterForm->attributes()
    )['masterForm'];

    $folderName = $this->uploadFolderName;
    $newImageUrl = $validatedForm['image_url'];
    $newImageName = $this->baseImageName . '-' . str($validatedForm['name'])->slug('_');
    $oldImageUrl = null;
    $validatedForm['image_url'] = $this->saveImage(
      $folderName,
      $newImageUrl,
      $newImageName,
      $oldImageUrl
    );

    $validatedForm['slug'] = str($validatedForm['name'])->slug();
    $this->model::create($validatedForm);

    session()->flash('success_notification', __('messages.created_notification_message'));
    $this->redirect($this->url, true);
  }

  public function edit()
  {
    $record = $this->model::findOrFail($this->id);
    $this->masterForm->fill($record);
  }

  public function update()
  {
    $validatedForm = $this->validate(
      $this->masterForm->rules($this->id),
      [],
      $this->masterForm->attributes()
    )['masterForm'];

    $record = $this->model::findOrFail($this->id);

    $folderName = $this->uploadFolderName;
    $newImageUrl = $validatedForm['image_url'];
    $newImageName = $this->baseImageName . '-' . str($validatedForm['name'])->slug('_');
    $oldImageUrl = $record->image_url;
    $validatedForm['image_url'] = $this->saveImage(
      $folderName,
      $newImageUrl,
      $newImageName,
      $oldImageUrl
    );

    $record->update($validatedForm);

    session()->flash('success_notification', __('messages.updated_notification_message'));
    $this->redirect($this->url, true);
  }

  public function delete()
  {
    $record = $this->model::findOrFail($this->id);

    $this->deleteImage($record->image_url);

    $record->delete();
    session()->flash('success_notification', __('messages.deleted_notification_message'));
    $this->redirect($this->url, true);
  }
}
