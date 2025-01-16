<x-content :title="$title">
  <x-form-menu :url="$url" :fieldId="$id" :isDeleteShowed="false" />
  <x-toast /> 
  <x-product-contents.product-content-tab activatedTab="product-content-metas" :fieldId="$id" />
  <x-toast />
  <div class="mb-4">
    <h1 class="font-bold text-center">{{ $productContent['product']['name'] }}</h1>
    <h2 class="font-bold text-center">{{ $productContent['title'] }}</h2>
  </div>

  <div class="mb-2">
    <x-button label="Create"  wire:click="createProductContentMeta" />
  </div>

  <div class="overflow-x-scroll rounded-lg border min-h-80">
    <table class="min-w-full border-gray-300">
      <thead class="bg-gray-100">
        <tr>
          <th class="px-2 py-2 border border-gray-300 text-left text-nowrap w-0">Action</th>
          <th class="px-2 py-2 border border-gray-300 text-left text-nowrap w-0">Ordinal</th>
          <th class="px-2 py-2 border border-gray-300 text-left text-nowrap w-0">Property Group</th>
          <th class="px-2 py-2 border border-gray-300 text-left text-nowrap w-0">Property</th>
          <th class="px-2 py-2 border border-gray-300 text-left text-nowrap">Content</th>
        </tr>
      </thead>
      <tbody>
        @forelse ($productContent['product_content_metas'] as $index => $item)
          <tr class="bg-white hover:bg-gray-50">

            <td class="px-2 py-2 border border-gray-300 text-center text-nowrap">
                <x-dropdown no-x-anchor class="btn-sm">
                  <x-menu-item title="Edit"  wire:click.debounce.500ms="editProductContentMeta('{{ $item['id'] }}')" role="menuitem" />
                </x-dropdown>
            </td>
            <td class="px-2 py-2 border border-gray-300 text-nowrap text-right">{{ $item['ordinal'] }}</td>
            <td class="px-2 py-2 border border-gray-300 text-nowrap">
              {{ $item['meta_property']['meta_property_group']['name'] }}
            </td>
            <td class="px-2 py-2 border border-gray-300 text-nowrap">{{ $item['meta_property']['name'] }}</td>
            <td class="px-2 py-2 border border-gray-300 text-nowrap">{{ $item['content'] }}</td>
          </tr>
        @empty
          <tr>
            <td class="px-2 py-2 border border-gray-300 text-nowrap text-center" colspan="100%">Data not found</td>
          </tr>
        @endforelse

      </tbody>
    </table>
  </div>


  <x-modal wire:model="myModalProductContentMetaForm" 
        title="Product Content Meta ({{ 
          $productContentMetaId 
              ? ($isReadonly ? 'Show' : 'Edit') 
              : 'Create' 
      }})"
      subtitle="Livewire example" 
      separator>

      <form wire:submit.prevent="{{ $productContentMetaId ? 'updateProductContentMeta' : 'storeProductContentMeta' }}">

        
          <div class="mb-3">
              <x-select 
                  label="Select Meta Property" 
                  wire:model="masterForm.meta_property_id" 
                  :options="array_merge([['label' => 'Select Meta Property', 'value' => '']], isset($productContent['meta_property_next']) ? array_map(function($metaProperty) {
                      return ['label' => $metaProperty['name'], 'value' => $metaProperty['value']];
                  }, $productContent['meta_property_next']) : [])" 
                  option-label="label" 
                  option-value="value" 
                  :clearable="false" 
                  :disabled="$isReadonly" 
              />
          </div>
      
        
          <div class="mb-3">
              <x-input label="Content" wire:model="masterForm.content" placeholder="Content"  :disabled="$isReadonly" />
          </div>

          <div class="mb-3">
              <x-input label="Ordinal" wire:model="masterForm.ordinal" placeholder="Ordinal" min="0" :disabled="$isReadonly" />
          </div>

          <div class="mb-3" label="Activate">
            <x-select 
                wire:model="masterForm.is_activated" 
                :options="[['label' => 'Yes', 'value' => 1], ['label' => 'No', 'value' => 0]]" 
                option-label="label" 
                option-value="value" 
                :clearable="false" 
                :disabled="$isReadonly" 
            />
          </div>

          <div class="mt-4 text-center">
              @if ($productContentMetaId)
                  <x-button type="submit" label="Update" cyan />
              @else
                  <x-button type="submit" label="Store" green />
              @endif
              <x-button label="Cancel" x-on:click="$wire.myModalProductContentMetaForm = false" secondary />
          </div>
      </form>

      <x-errors class="mt-4" />

  </x-modal>


  <div wire:loading
    wire:target="createProductContentMeta, storeProductContentMeta, editProductContentMeta, updateProductContentMeta, deleteProductContentMeta"
    class="fixed left-0 top-0 w-full h-full bg-black opacity-25  z-[99999]">
    <div class="w-full h-full flex justify-center items-center">
      <x-form-loading />
    </div>
  </div>


</x-content>
