<x-content :title="$title">
  <x-form-menu :url="$url" :fieldId="$id" :isDeleteShowed="false" />
  <x-toast /> 
  <x-product-contents.product-content-tab activatedTab="product-content-specifications" :fieldId="$id" />
  <div class="mb-4">
    <h1 class="font-bold text-center">{{ $productContent['product']['name'] }}</h1>
    <h2 class="font-bold text-center">{{ $productContent['title'] }}</h2> 
  </div>

  <div class="mb-2">
    <x-button label="Create" wire:click.debounce.500ms="createProductContentSpecification()" green />
  </div>

  <div class="overflow-x-scroll rounded-lg border min-h-80">
    <table class="min-w-full border-gray-300">
      <thead class="bg-gray-100">
        <tr>
          <th class="px-2 py-2 border border-gray-300 text-left text-nowrap w-0">Action</th>
          <th class="px-2 py-2 border border-gray-300 text-left text-nowrap w-0">Ordinal</th>
          <th class="px-2 py-2 border border-gray-300 text-left text-nowrap w-0">Name</th>
          <th class="px-2 py-2 border border-gray-300 text-left text-nowrap">Description</th>
        </tr>
      </thead>
      <tbody>
        @forelse ($productContent['product_content_specifications'] as $index => $item)
          <tr class="bg-white hover:bg-gray-50">
           
            <td class="px-2 py-2 border border-gray-300 text-center text-nowrap">
              <x-dropdown no-x-anchor class="btn-sm">
                <x-menu-item title="Edit"  wire:click.debounce.500ms="editProductContentSpecification('{{ $item['id'] }}')" role="menuitem" />
                <x-menu-item title="Delete" wire:confirm="Do you want to delete this data?"  wire:click="deleteProductContentSpecification('{{ $item['id'] }}')" role="menuitem" />
              </x-dropdown>
            </td>
            
            <td class="px-2 py-2 border border-gray-300 text-nowrap text-right">{{ $item['ordinal'] }}</td>
            <td class="px-2 py-2 border border-gray-300 text-nowrap">{{ $item['name'] }}</td>
            <td class="px-2 py-2 border border-gray-300 text-nowrap">{{ $item['description'] }}</td>
          </tr>
        @empty
          <tr>
            <td class="px-2 py-2 border border-gray-300 text-nowrap text-center" colspan="100%">Data not found</td>
          </tr>
        @endforelse

      </tbody>
    </table>

    
  </div>

  <x-modal wire:model="myModalProductContentSpecificationForm" 
      title="Product Content Specification ({{ $productContentSpecificationId ? 'Edit' : 'Create' }})" 
      subtitle="Livewire example" 
      separator>

      <form wire:submit.prevent="{{ $productContentSpecificationId ? 'updateProductContentSpecification' : 'storeProductContentSpecification' }}">
      <div class="mb-3">
        <x-label for="masterForm.name">Name  </x-label>
        <x-input wire:model="masterForm.name" placeholder="Name " />
      </div>

      <div class="mb-3">
        <x-label for="masterForm.description">Description</x-label>
        <x-input wire:model="masterForm.description" placeholder="Description" />
      </div>

      <div class="mb-3">
        <x-label for="masterForm.ordinal">Ordinal</x-label>
        <x-input wire:model="masterForm.ordinal" placeholder="Ordinal" min="0" />
      </div>

      <div class="mb-3">
        <x-label for="masterForm.is_activated">Activate</x-label>
        <x-select wire:model="masterForm.is_activated" :options="[['label' => 'Yes', 'value' => 1], ['label' => 'No', 'value' => 0]]" option-label="label" option-value="value"
          :clearable="false" />
      </div>

      <div class="mt-4 text-center">  
        @if ($productContentSpecificationId)
          <x-button type="submit" label="Update" cyan />
        @else
          <x-button type="submit" label="Store" green />
        @endif
        <x-button label="Cancel" x-on:click="$wire.myModalProductContentSpecificationForm = false" secondary />
      </div>

      <x-errors class="mt-4" />
    </form>



  </x-modal>

  <div wire:loading
    wire:target="createProductContentSpecification, storeProductContentSpecification, editProductContentSpecification, updateProductContentSpecification, deleteProductContentSpecification"
    class="fixed left-0 top-0 w-full h-full bg-black opacity-25  z-[99999]">
    <div class="w-full h-full flex justify-center items-center">
      <x-form-loading />
    </div>
  </div>

  {{-- <pre>
  {{ print_r($productContent) }}
  </pre> --}}
</x-content>
