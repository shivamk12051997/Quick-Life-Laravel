<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AjaxController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\Admin\BrandController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\WebsiteController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\WarehouseController;
use App\Http\Controllers\Admin\SubCategoryController;
use App\Http\Controllers\User\UserDashboardController;
use App\Http\Controllers\Admin\AdminDashboardController;
use App\Http\Controllers\Warehouse\CurrentStockController;
use App\Http\Controllers\Warehouse\StockDetailsController;
use App\Http\Controllers\Warehouse\WarehouseDashboardController;

// Route::get('/', function () {
//     return view('welcome');
// });

Auth::routes();

Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::group(['middleware' => ['auth']], function () {
    Route::get('dashboard', [DashboardController::class, 'index'])->name('dashboard');
    Route::get('media/delete/{id}', [WebsiteController::class, 'media_delete'])->name('media.delete');
    
    Route::get('get_sub_category', [AjaxController::class, 'get_sub_category'])->name('get_sub_category');

});

Route::group(['middleware' => ['auth','is_Admin'], 'prefix' => 'admin'], function () {

    Route::get('dashboard', [AdminDashboardController::class, 'index'])->name('admin.dashboard');
    // Website Setting
    Route::get('website-setting', [WebsiteController::class, 'index'])->name('admin.website.setting');
    Route::post('website-setting/insert', action: [WebsiteController::class, 'insert'])->name('admin.website.setting.insert');
    Route::get('user/login/{id}', [WebsiteController::class, 'user_login'])->name('admin.user.login');

    // Category
    Route::get('category', [CategoryController::class, 'index'])->name('admin.category.index');
    Route::get('category/datatable', [CategoryController::class, 'datatable'])->name('admin.category.datatable');
    Route::post('category/store', [CategoryController::class, 'store'])->name('admin.category.store');
    Route::get('category/edit', [CategoryController::class, 'edit'])->name('admin.category.edit');
    Route::get('category/delete/{id}', [CategoryController::class, 'delete'])->name('admin.category.delete');
    Route::get('category/status/{id}', [CategoryController::class, 'status'])->name('admin.category.status');
    // SubCategory
    Route::get('sub_category', [SubCategoryController::class, 'index'])->name('admin.sub_category.index');
    Route::get('sub_category/datatable', [SubCategoryController::class, 'datatable'])->name('admin.sub_category.datatable');
    Route::post('sub_category/store', [SubCategoryController::class, 'store'])->name('admin.sub_category.store');
    Route::get('sub_category/edit', [SubCategoryController::class, 'edit'])->name('admin.sub_category.edit');
    Route::get('sub_category/delete/{id}', [SubCategoryController::class, 'delete'])->name('admin.sub_category.delete');
    Route::get('sub_category/status/{id}', [SubCategoryController::class, 'status'])->name('admin.sub_category.status');
    // Brand
    Route::get('brand', [BrandController::class, 'index'])->name('admin.brand.index');
    Route::get('brand/datatable', [BrandController::class, 'datatable'])->name('admin.brand.datatable');
    Route::post('brand/store', [BrandController::class, 'store'])->name('admin.brand.store');
    Route::get('brand/edit', [BrandController::class, 'edit'])->name('admin.brand.edit');
    Route::get('brand/delete/{id}', [BrandController::class, 'delete'])->name('admin.brand.delete');
    Route::get('brand/status/{id}', [BrandController::class, 'status'])->name('admin.brand.status');

    // Product
    Route::get('product', [ProductController::class, 'index'])->name('admin.product.index');
    Route::get('product/datatable', [ProductController::class, 'datatable'])->name('admin.product.datatable');
    Route::post('product/store', [ProductController::class, 'store'])->name('admin.product.store');
    Route::get('product/edit', [ProductController::class, 'edit'])->name('admin.product.edit');
    Route::get('product/delete/{id}', [ProductController::class, 'delete'])->name('admin.product.delete');
    Route::get('product/status/{id}', [ProductController::class, 'status'])->name('admin.product.status');

    // Warehouse
    Route::get('warehouse', [WarehouseController::class, 'index'])->name('admin.warehouse.index');
    Route::get('warehouse/datatable', [WarehouseController::class, 'datatable'])->name('admin.warehouse.datatable');
    Route::post('warehouse/store', [WarehouseController::class, 'store'])->name('admin.warehouse.store');
    Route::get('warehouse/edit', [WarehouseController::class, 'edit'])->name('admin.warehouse.edit');
    Route::get('warehouse/delete/{id}', [WarehouseController::class, 'delete'])->name('admin.warehouse.delete');
    Route::get('warehouse/status/{id}', [WarehouseController::class, 'status'])->name('admin.warehouse.status');
});

Route::group(['middleware' => ['auth','is_Warehouse'], 'prefix' => 'warehouse'], function () {

    Route::get('dashboard', [WarehouseDashboardController::class, 'index'])->name('warehouse.dashboard');
    
    // CurrentStock
    Route::get('current_stock', [CurrentStockController::class, 'index'])->name('warehouse.current_stock.index');
    Route::get('current_stock/datatable', [CurrentStockController::class, 'datatable'])->name('warehouse.current_stock.datatable');

    // Stock Details
    Route::get('stock_details', [StockDetailsController::class, 'index'])->name('warehouse.stock_details.index');
    Route::get('stock_details/datatable', [StockDetailsController::class, 'datatable'])->name('warehouse.stock_details.datatable');
    Route::post('stock_details/store', [StockDetailsController::class, 'store'])->name('warehouse.stock_details.store');
    Route::get('stock_details/edit', [StockDetailsController::class, 'edit'])->name('warehouse.stock_details.edit');
    Route::get('stock_details/delete/{id}', [StockDetailsController::class, 'delete'])->name('warehouse.stock_details.delete');

    Route::get('stock_details/current_stock', [StockDetailsController::class, 'current_stock'])->name('warehouse.stock_details.current_stock');
    Route::get('stock_details/current_stock_datatable', [StockDetailsController::class, 'current_stock_datatable'])->name('warehouse.stock_details.current_stock_datatable');
});

Route::group(['middleware' => ['auth','is_User'], 'prefix' => 'user'], function () {
    
    // Product
    Route::get('dashboard', [UserDashboardController::class, 'index'])->name('user.dashboard');
});
