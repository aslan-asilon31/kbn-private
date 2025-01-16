<?php

namespace App\Livewire\Pages\Admin\ProductCategoryFirstResources;

use App\Livewire\Pages\Admin\ProductCategoryFirstResources\Forms\ProductCategoryFirstForm;
use Livewire\Component;
use App\Models\EmployeeAccount;

class ProductCategoryFirstCrud extends Component
{
  public function render()
  {
    return view('livewire.pages.admin.product-category-first-resources.product-category-first-crud')
      ->title($this->title);
  }

  use \Livewire\WithFileUploads;
  use \App\Helpers\ImageUpload\Traits\WithImageUpload;
  use \App\Helpers\Permission\Traits\WithPermission;
  use \Mary\Traits\Toast;

  #[\Livewire\Attributes\Locked]
  private string $basePageName = 'product_category_first';

  #[\Livewire\Attributes\Locked]
  public string $title = 'Product Category First';

  #[\Livewire\Attributes\Locked]
  public string $url = '/product-category-firsts';

  #[\Livewire\Attributes\Locked]
  private string $baseFolderName = '/files/images/product-category-firsts';

  #[\Livewire\Attributes\Locked]
  private string $baseImageName = 'product_category_first_image';

  #[\Livewire\Attributes\Locked]
  public string $id = '';

  #[\Livewire\Attributes\Locked]
  public string $readonly = '';

  #[\Livewire\Attributes\Locked]
  public bool $isReadonly = false;

  #[\Livewire\Attributes\Locked]
  public bool $isDisabled = false;

  #[\Livewire\Attributes\Locked]
  public array $options = [];

  #[\Livewire\Attributes\Locked]
  protected $masterModel = \App\Models\ProductCategoryFirst::class;

  public ProductCategoryFirstForm $masterForm;

  public function mount()
  {
    if ($this->id && $this->readonly) {
      $this->title .= ' (Show)';
      $this->show();
    } else if ($this->id) {
      $this->title .= ' (Edit)';
      $this->edit();
    } else {
      $this->title .= ' (Create)';
      $this->create();
    }
    $this->initialize();
  }

  public function initialize()
  {
    $this->options['product_category_seconds'] = \App\Models\ProductCategorySecond::get()->all();
  }

  public function create()
  {
    $this->permission($this->basePageName.'-create');
    $this->masterForm->reset();
  }

  public function store()
  {
    $this->permission( $this->basePageName.'-create');
    $validatedForm = $this->validate(
      $this->masterForm->rules(),
      [],
      $this->masterForm->attributes()
    )['masterForm'];

    \Illuminate\Support\Facades\DB::beginTransaction();
    try {

      $validatedForm['slug'] = str($validatedForm['name'])->slug();
      $validatedForm['created_by'] = auth()->user()->username;
      $validatedForm['updated_by'] = auth()->user()->username;

      // image_url
      $folderName = $this->baseFolderName;
      $now = now()->format('Ymd_His_u');
      $imageName = $this->baseImageName . '_' . str($validatedForm['name'])->slug('_')  . '_' . 'image' . '_' . $now;
      $newImageUrl = $validatedForm['image_url'];

      $validatedForm['image_url'] = $this->saveImage(
        $folderName,
        $imageName,
        $newImageUrl,
      );
      // ./image_url

      // header_image_url
      $folderName = $this->baseFolderName;
      $now = now()->format('Ymd_His_u');
      $imageName = $this->baseImageName . '_' . str($validatedForm['name'])->slug('_') . '_' . 'header_image' . '_' . $now;
      $newImageUrl = $validatedForm['header_image_url'];

      $validatedForm['header_image_url'] = $this->saveImage(
        $folderName,
        $imageName,
        $newImageUrl,
      );
      // ./header_image_url

      $this->masterModel::create($validatedForm);
      \Illuminate\Support\Facades\DB::commit();

      $this->create();
      $this->success('Data has been stored');
    } catch (\Throwable $th) {
      \Illuminate\Support\Facades\DB::rollBack();
      $this->error('Data failed to store');
    }
  }

  public function show()
  {
    $this->permission($this->basePageName.'-show');
    $this->isReadonly = true;
    $this->isDisabled = true;
    $masterData = $this->masterModel::findOrFail($this->id);
    $this->masterForm->fill($masterData);
  }

  public function edit()
  {
    $this->permission($this->basePageName.'-update');
    $masterData = $this->masterModel::findOrFail($this->id);
    $this->masterForm->fill($masterData);
  }

  public function update()
  {
    $this->permission($this->basePageName.'-update');
    $validatedForm = $this->validate(
      $this->masterForm->rules(),
      [],
      $this->masterForm->attributes()
    )['masterForm'];

    $masterData = $this->masterModel::findOrFail($this->id);

    \Illuminate\Support\Facades\DB::beginTransaction();
    try {

      $validatedForm['slug'] = str($validatedForm['name'])->slug();
      $validatedForm['updated_by'] = auth()->user()->username;

      // image_url
      $folderName = $this->baseFolderName;
      $now = now()->format('Ymd_His_u');
      $imageName = $this->baseImageName . '_' . str($validatedForm['name'])->slug('_')  . '_' . 'image' . '_' . $now;
      $newImageUrl = $validatedForm['image_url'];
      $oldImageUrl = $masterData['image_url'];

      $validatedForm['image_url'] = $this->saveImage(
        $folderName,
        $imageName,
        $newImageUrl,
        $oldImageUrl,
      );
      // ./image_url

      // header_image_url
      $folderName = $this->baseFolderName;
      $now = now()->format('Ymd_His_u');
      $imageName = $this->baseImageName . '_' . str($validatedForm['name'])->slug('_') . '_' . 'header_image' . '_' . $now;
      $newImageUrl = $validatedForm['header_image_url'];
      $oldImageUrl = $masterData['header_image_url'];

      $validatedForm['header_image_url'] = $this->saveImage(
        $folderName,
        $imageName,
        $newImageUrl,
        $oldImageUrl,
      );
      // ./header_image_url

      $masterData->update($validatedForm);

      \Illuminate\Support\Facades\DB::commit();

      $this->success('Data has been updated');
    } catch (\Throwable $th) {
      \Illuminate\Support\Facades\DB::rollBack();
      $this->error('Data failed to update');
    }
  }

  public function delete()
  {
    $this->permission($this->basePageName.'-delete');

    $masterData = $this->masterModel::findOrFail($this->id);

    $this->basePageName = 'product_category_first-delete';

    $this->permission($this->basePageName);

    \Illuminate\Support\Facades\DB::beginTransaction();
    try {

      $this->deleteImage($masterData['image_url']);
      $this->deleteImage($masterData['header_image_url']);

      $masterData->delete();
      \Illuminate\Support\Facades\DB::commit();

      $this->success('Data has been deleted');
      $this->redirect($this->url, true);
    } catch (\Throwable $th) {
      \Illuminate\Support\Facades\DB::rollBack();
      $this->error('Data failed to delete');
    }
  }
}