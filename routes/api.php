<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\API\FrontController;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::post('/login', [AuthController::class, 'login']);
Route::post('/register', [AuthController::class, 'register']);
Route::get('/home', [FrontController::class, 'home']);
Route::get('/products', [FrontController::class, 'products']);
Route::get('/product/{slug}', [FrontController::class, 'product_show']);
Route::get('/brands', [FrontController::class, 'brands']);
Route::get('/categories', [FrontController::class, 'categories']);
Route::get('/sub_categories/{slug}', [FrontController::class, 'sub_categories']);

Route::group(['middleware' => ['auth']], function () {
    // Route::get('dashboard', [DashboardController::class, 'index'])->name('dashboard');
    // Route::get('media/delete/{id}', [WebsiteController::class, 'media_delete'])->name('media.delete');
    
    // Route::get('get_sub_category', [AjaxController::class, 'get_sub_category'])->name('get_sub_category');

});