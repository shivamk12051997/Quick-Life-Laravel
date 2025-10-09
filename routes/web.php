<?php

use App\Models\Order;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AjaxController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\Admin\BlogController;
use App\Http\Controllers\Admin\BrandController;
use App\Http\Controllers\Admin\CouponController;
use App\Http\Controllers\Admin\PolicyController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\WebsiteController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\WarehouseController;
use App\Http\Controllers\Warehouse\OrderController;
use App\Http\Controllers\Admin\SubCategoryController;
use App\Http\Controllers\User\UserDashboardController;
use App\Http\Controllers\Admin\ChildCategoryController;
use App\Http\Controllers\Admin\DoctorProfileController;
use App\Http\Controllers\Admin\AdminDashboardController;
use App\Http\Controllers\Warehouse\CurrentStockController;
use App\Http\Controllers\Warehouse\StockDetailsController;
use App\Http\Controllers\Warehouse\ProductRequestController;
use App\Http\Controllers\Warehouse\WarehouseDashboardController;

// Route::get('/', function () {
//     return view('welcome');
// });

Auth::routes();

Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::group(['middleware' => ['auth']], function () {
    Route::get('dashboard', [DashboardController::class, 'index'])->name('dashboard');
    Route::post('edit_profile/store', [WebsiteController::class, 'edit_profile_store'])->name('edit_profile.store');
    Route::get('media/delete/{id}', [WebsiteController::class, 'media_delete'])->name('media.delete');
    
    Route::get('get_sub_category', [AjaxController::class, 'get_sub_category'])->name('get_sub_category');
    Route::get('get_child_category', [AjaxController::class, 'get_child_category'])->name('get_child_category');


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
    // ChildCategory
    Route::get('child_category', [ChildCategoryController::class, 'index'])->name('admin.child_category.index');
    Route::get('child_category/datatable', [ChildCategoryController::class, 'datatable'])->name('admin.child_category.datatable');
    Route::post('child_category/store', [ChildCategoryController::class, 'store'])->name('admin.child_category.store');
    Route::get('child_category/edit', [ChildCategoryController::class, 'edit'])->name('admin.child_category.edit');
    Route::get('child_category/delete/{id}', [ChildCategoryController::class, 'delete'])->name('admin.child_category.delete');
    Route::get('child_category/status/{id}', [ChildCategoryController::class, 'status'])->name('admin.child_category.status');
    // Brand
    Route::get('brand', [BrandController::class, 'index'])->name('admin.brand.index');
    Route::get('brand/datatable', [BrandController::class, 'datatable'])->name('admin.brand.datatable');
    Route::post('brand/store', [BrandController::class, 'store'])->name('admin.brand.store');
    Route::get('brand/edit', [BrandController::class, 'edit'])->name('admin.brand.edit');
    Route::get('brand/delete/{id}', [BrandController::class, 'delete'])->name('admin.brand.delete');
    Route::get('brand/status/{id}', [BrandController::class, 'status'])->name('admin.brand.status');
    // Coupon
    Route::get('coupon', [CouponController::class, 'index'])->name('admin.coupon.index');
    Route::get('coupon/datatable', [CouponController::class, 'datatable'])->name('admin.coupon.datatable');
    Route::post('coupon/store', [CouponController::class, 'store'])->name('admin.coupon.store');
    Route::get('coupon/edit', [CouponController::class, 'edit'])->name('admin.coupon.edit');
    Route::get('coupon/delete/{id}', [CouponController::class, 'delete'])->name('admin.coupon.delete');
    Route::get('coupon/status/{id}', [CouponController::class, 'status'])->name('admin.coupon.status');

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
    Route::get('warehouse/change_status', [WarehouseController::class, 'change_status'])->name('admin.warehouse.change_status');
    Route::post('warehouse/change_status_store', [WarehouseController::class, 'change_status_store'])->name('admin.warehouse.change_status_store');

    // Doctor Profiles
    Route::get('doctor_profile', [DoctorProfileController::class, 'index'])->name('admin.doctor_profile.index');
    Route::get('doctor_profile/datatable', [DoctorProfileController::class, 'datatable'])->name('admin.doctor_profile.datatable');
    Route::post('doctor_profile/store', [DoctorProfileController::class, 'store'])->name('admin.doctor_profile.store');
    Route::get('doctor_profile/edit', [DoctorProfileController::class, 'edit'])->name('admin.doctor_profile.edit');
    Route::get('doctor_profile/delete/{id}', [DoctorProfileController::class, 'delete'])->name('admin.doctor_profile.delete');
    Route::get('doctor_profile/change_status', [DoctorProfileController::class, 'change_status'])->name('admin.doctor_profile.change_status');
    Route::post('doctor_profile/change_status_store', [DoctorProfileController::class, 'change_status_store'])->name('admin.doctor_profile.change_status_store');

    // Blog
    Route::get('blog', [BlogController::class, 'index'])->name('admin.blog.index');
    Route::get('blog/datatable', [BlogController::class, 'datatable'])->name('admin.blog.datatable');
    Route::post('blog/store', [BlogController::class, 'store'])->name('admin.blog.store');
    Route::get('blog/edit', [BlogController::class, 'edit'])->name('admin.blog.edit');
    Route::get('blog/delete/{id}', [BlogController::class, 'delete'])->name('admin.blog.delete');
    Route::get('blog/status/{id}', [BlogController::class, 'status'])->name('admin.blog.status');
    // Policy
    Route::get('policy', [PolicyController::class, 'index'])->name('admin.policy.index');
    Route::get('policy/datatable', [PolicyController::class, 'datatable'])->name('admin.policy.datatable');
    Route::post('policy/store', [PolicyController::class, 'store'])->name('admin.policy.store');
    Route::get('policy/edit', [PolicyController::class, 'edit'])->name('admin.policy.edit');
    Route::get('policy/delete/{id}', [PolicyController::class, 'delete'])->name('admin.policy.delete');
    Route::get('policy/status/{id}', [PolicyController::class, 'status'])->name('admin.policy.status');

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

    // Product Request
    Route::get('product_request', [ProductRequestController::class, 'index'])->name('warehouse.product_request.index');
    Route::get('product_request/datatable', [ProductRequestController::class, 'datatable'])->name('warehouse.product_request.datatable');
    Route::post('product_request/store', [ProductRequestController::class, 'store'])->name('warehouse.product_request.store');
    Route::get('product_request/edit', [ProductRequestController::class, 'edit'])->name('warehouse.product_request.edit');
    Route::get('product_request/delete/{id}', [ProductRequestController::class, 'delete'])->name('warehouse.product_request.delete');
    Route::get('product_request/change_status', [ProductRequestController::class, 'change_status'])->name('warehouse.product_request.change_status');
    Route::post('product_request/change_status_store', [ProductRequestController::class, 'change_status_store'])->name('warehouse.product_request.change_status_store');

    // All Orders
    Route::get('orders', [OrderController::class, 'index'])->name('warehouse.orders.index');
    Route::get('orders/datatable', [OrderController::class, 'datatable'])->name('warehouse.orders.datatable');
    Route::post('orders/store', [OrderController::class, 'store'])->name('warehouse.orders.store');
    Route::get('orders/edit', [OrderController::class, 'edit'])->name('warehouse.orders.edit');
    Route::get('orders/show/{id}', [OrderController::class, 'show'])->name('warehouse.orders.show');
    Route::post('order/change_status/{id}', [OrderController::class, 'change_status'])->name('warehouse.order.change_status');
    Route::get('orders/invoice/{id}', [OrderController::class, 'invoice'])->name('warehouse.orders.invoice');

    Route::get('orders/delete/{id}', [OrderController::class, 'delete'])->name('warehouse.orders.delete');
    Route::get('orders/status/{id}', [OrderController::class, 'status'])->name('warehouse.orders.status');

});

Route::group(['middleware' => ['auth','is_User'], 'prefix' => 'user'], function () {
    
    // Product
    Route::get('inactive_dashboard', [UserDashboardController::class, 'inactive_dashboard'])->name('user.inactive_dashboard');
});
