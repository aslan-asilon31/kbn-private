<?php

use Illuminate\Support\Facades\Route;


Route::get('/dashboard', \App\Livewire\Pages\DashboardResources\DashboardList::class)->name('dashboard');
