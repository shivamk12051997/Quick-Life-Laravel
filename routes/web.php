<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\Admin\WebsiteController;
use App\Http\Controllers\User\UserDashboardController;
use App\Http\Controllers\Admin\AdminDashboardController;

// Route::get('/', function () {
//     return view('welcome');
// });

Auth::routes();

Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::group(['middleware' => ['auth']], function () {
    Route::get('dashboard', [DashboardController::class, 'index'])->name('dashboard');
    
});

Route::group(['middleware' => ['auth','is_Admin'], 'prefix' => 'admin'], function () {

    Route::get('dashboard', [AdminDashboardController::class, 'index'])->name('admin.dashboard');
    // Website Setting
    Route::get('website-setting', [WebsiteController::class, 'index'])->name('admin.website.setting');
    Route::post('website-setting/insert', action: [WebsiteController::class, 'insert'])->name('admin.website.setting.insert');
});


Route::group(['middleware' => ['auth','is_User'], 'prefix' => 'user'], function () {

    Route::get('dashboard', [UserDashboardController::class, 'index'])->name('user.dashboard');
});