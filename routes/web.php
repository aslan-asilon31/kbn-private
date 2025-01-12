<?php

use Illuminate\Support\Facades\Route;


Route::get('/', \App\Livewire\Pages\HomeResources\HomeList::class)->name('home');
Route::get('/kontak', \App\Livewire\Pages\KontakResources\KontakList::class)->name('kontak');
Route::get('/kategori', \App\Livewire\Pages\KategoriResources\KategoriList::class)->name('kategori');
Route::get('/tentang', \App\Livewire\Pages\TentangResources\TentangList::class)->name('tentang');


Route::get('/produk', \App\Livewire\Pages\ProdukResources\ProdukList::class)->name('produk');
Route::get('/produk-detail', \App\Livewire\Pages\ProdukDetailResources\ProdukDetailList::class)->name('produk-detail');

