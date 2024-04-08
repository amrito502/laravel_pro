<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\categoryController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\SubCategoryController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\BrandController;
use App\Http\Controllers\Admin\ColorController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/admin',[AuthController::class,'admin_login'])->name('admin.login');
Route::post('/admin',[AuthController::class,'auth_login_admin'])->name('auth.admin.login');
Route::get('/admin/logout',[AuthController::class,'admin_logout'])->name('admin.logout');
// ======admin routes group========
Route::group(['middleware' => 'admin'], function(){
// admin-route
Route::get('/admin/dashboard',[DashboardController::class,'admin_dashboard'])->name('admin.dashboard');
Route::get('/admin/admin/list',[AdminController::class,'admin_lists'])->name('admin.lists');
Route::get('/admin/admin/add',[AdminController::class,'admin_add'])->name('admin.add');
Route::post('/admin/admin/add',[AdminController::class,'insert'])->name('admin.insert');
Route::get('/admin/admin/edit/{id}',[AdminController::class,'edit'])->name('admin.edit');
Route::post('/admin/admin/edit/{id}',[AdminController::class,'update'])->name('admin.update');
Route::get('/admin/admin/delete/{id}',[AdminController::class,'delete'])->name('admin.delete');

// category-route
Route::get('/admin/category/list',[categoryController::class,'category_lists'])->name('category.lists');
Route::get('/admin/category/add',[categoryController::class,'category_add'])->name('category.add');
Route::post('/admin/category/add',[categoryController::class,'category_insert'])->name('category.insert');
Route::get('/admin/category/edit/{id}',[categoryController::class,'category_edit'])->name('category.edit');
Route::post('/admin/category/edit/{id}',[categoryController::class,'category_update'])->name('category.update');
Route::get('/admin/category/delete/{id}',[categoryController::class,'category_delete'])->name('category.delete');

// sub-category
Route::get('/admin/sub_category/list',[SubCategoryController::class,'sub_category_lists'])->name('sub_category.lists');
Route::get('/admin/sub_category/add',[SubCategoryController::class,'sub_category_add'])->name('sub_category.add');
Route::post('/admin/sub_category/add',[SubCategoryController::class,'sub_category_insert'])->name('sub_category.insert');
Route::get('/admin/sub_category/edit/{id}',[SubCategoryController::class,'sub_category_edit'])->name('sub_category.edit');
Route::post('/admin/sub_category/edit/{id}',[SubCategoryController::class,'sub_category_update'])->name('sub_category.update');
Route::get('/admin/sub_category/delete/{id}',[SubCategoryController::class,'sub_category_delete'])->name('sub_category.delete');
Route::post('admin/get_sub_category',[SubCategoryController::class,'get_sub_category'])->name('get_sub_category');

// products route
Route::get('/admin/product/list',[ProductController::class,'product_lists'])->name('product.lists');
Route::get('/admin/product/add',[ProductController::class,'product_add'])->name('product.add');
Route::post('/admin/product/add',[ProductController::class,'product_insert'])->name('product.insert');
Route::get('/admin/product/edit/{id}',[ProductController::class,'product_edit'])->name('product.edit');
Route::post('/admin/product/edit/{id}',[ProductController::class,'product_update'])->name('product.update');
Route::get('/admin/product/delete/{id}',[ProductController::class,'product_delete'])->name('product.delete');


// Brand route
Route::get('/admin/brand/list',[BrandController::class,'list'])->name('brand.lists');
Route::get('/admin/brand/add',[BrandController::class,'add'])->name('brand.add');
Route::post('/admin/brand/add',[BrandController::class,'insert'])->name('brand.insert');
Route::get('/admin/brand/edit/{id}',[BrandController::class,'edit'])->name('brand.edit');
Route::post('/admin/brand/edit/{id}',[BrandController::class,'update'])->name('brand.update');
Route::get('/admin/brand/delete/{id}',[BrandController::class,'delete'])->name('brand.delete');


// Color route
Route::get('/admin/color/list',[ColorController::class,'list'])->name('color.lists');
Route::get('/admin/color/add',[ColorController::class,'add'])->name('color.add');
Route::post('/admin/color/add',[ColorController::class,'insert'])->name('color.insert');
Route::get('/admin/color/edit/{id}',[ColorController::class,'edit'])->name('color.edit');
Route::post('/admin/color/edit/{id}',[ColorController::class,'update'])->name('color.update');
Route::get('/admin/color/delete/{id}',[ColorController::class,'delete'])->name('color.delete');






});





