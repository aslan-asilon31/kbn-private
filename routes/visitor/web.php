<?php

use Illuminate\Support\Facades\Route;


Route::get('/', \App\Livewire\Pages\Visitor\HomeResources\HomeList::class)->name('home');
Route::get('/kontak', \App\Livewire\Pages\Visitor\KontakResources\KontakList::class)->name('kontak');
Route::get('/kategori', \App\Livewire\Pages\Visitor\KategoriResources\KategoriList::class)->name('kategori');
Route::get('/tentang', \App\Livewire\Pages\Visitor\TentangResources\TentangList::class)->name('tentang');

Route::get('/produk', \App\Livewire\Pages\Visitor\ProdukResources\ProdukList::class)->name('produk');
Route::get('/produk-detail/{id}', \App\Livewire\Pages\Visitor\ProdukDetailResources\ProdukDetailList::class)->name('produk-detail');
Route::get('/produk-brand/{id}', \App\Livewire\Pages\Visitor\ProdukBrandResources\ProdukBrandList::class)->name('produk-brand');

