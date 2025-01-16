<x-content :title="$title">
  <x-form-menu :url="$url" :fieldId="$id" />
 
 
  <div class="grid grid-cols-2 mb-4">
    <div>
      <x-button label="List" link="{{ $url }}" class="btn-ghost btn-outline" />
      @if (!$id)
        <x-button label="Create" link="{{ $url . '/create' }}" class="btn-ghost btn-outline" />
      @endif

      @if ($id && $isReadonly)
        <x-button label="Edit" link="{{ $url . '/edit/' . $id }}" class="btn-ghost btn-outline" />
      @endif

    </div>
    <div class="text-right">
      @if ($id && !$isReadonly)
        <x-button label="Delete" wire:click="delete" wire:confirm="Do you want to delete this data?"
          class="btn-ghost btn-outline text-red-500" />
      @endif
    </div>
  </div>
  <x-form wire:submit="{{ $id ? 'update' : 'store' }}" >
    <div class="grid grid-cols-2 gap-4">  <!-- Grid container for two columns -->

        <div> <!-- Left Column -->
            <x-choices-offline
                label="Product Category 1"
                wire:model="masterForm.product_category_first_id"
                :options="$productList"
                placeholder="Product Category 1"
                single
                searchable />

            <x-input wire:model="masterForm.name" label="Name" placeholder="Name" :readonly="$isReadonly" />
            <x-input label="Selling Price" wire:model="masterForm.selling_price" prefix="Rp" precision="4" :readonly="$isReadonly"   />
            <x-input wire:model="masterForm.discount_persentage" label="discount persentage" placeholder="discount persentage" :readonly="$isReadonly" />
            <x-input wire:model="masterForm.nett_price" label="Net Price" placeholder="Net Price" :readonly="$isReadonly" />

            <x-choices-offline wire:model="masterForm.availability" label="Availability" :options="[['id' => 0, 'name' => 'In Stock'],['id' => 1, 'name' => 'Out of Stock']]" single searchable
                :readonly="$isReadonly" />
                <x-input wire:model="masterForm.discount_value" label="discount value" placeholder="discount value" :readonly="$isReadonly" />
        </div>

        <div> <!-- Right Column -->
          <x-input wire:model="masterForm.weight" label="Weight" placeholder="Weight" :readonly="$isReadonly" />

            <x-input wire:model="masterForm.rating" label="rating" placeholder="rating" :readonly="$isReadonly" />
            <x-input wire:model="masterForm.sold_qty" label="sold quantity" placeholder="sold quantity" :readonly="$isReadonly" />

            <x-file wire:model="masterForm.image_url" label="Image" accept="image/*" crop-after-change :disabled="$isDisabled">
                <img
                  src="{{ $masterForm->image_url ?? 'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930' }}"
                  class="h-48 rounded-lg" />
            </x-file>

            <x-choices-offline wire:model="masterForm.is_activated" label="Is Activated" :options="[['id' => 0, 'name' => 'Inactive'], ['id' => 1, 'name' => 'Active']]" single searchable
                :readonly="$isReadonly" />
        </div>
    </div> <!-- End of grid container -->

    @if (!$isReadonly)
        <div class="text-center mt-3">
            <x-errors class="text-white mb-3" />
            <x-button type="submit" :label="$id ? 'Update' : 'Store'" class="btn-success btn-sm text-white" />
        </div>
    @endif
</x-form>


</x-content>
