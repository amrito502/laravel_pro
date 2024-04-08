<?php

namespace App\Http\Controllers\Admin;

use App\Models\Brand;
use App\Models\Product;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Models\CategoryModel;
use App\Http\Controllers\Controller;
use App\Models\ColorModel;
use Illuminate\Support\Facades\Auth;

class ProductController extends Controller
{
    public function product_lists()
    {
        $data['getRecord'] = Product::getRecord();
        $data['header_title'] = "Product Lists";
        return view('admin.product.list', $data);
    }

    public function product_add()
    {
        $data['header_title'] = "Add New Product";
        return view('admin.product.add', $data);
    }

    public function product_insert(Request $request)
    {

        $product = new Product;
        $title = trim($request->title);
        $product->title = $title;
        $product->created_by = Auth::user()->id;
        $product->save();

        $slug = Str::slug($title, "-");
        $checkSlug = Product::checkSlug($slug);
        if(!empty($checkSlug)){
            $product->slug = $slug;
            $product->save();
        }else{
            $new_slug = $slug.'-'.$product->id;
            $product->slug = $new_slug;
            $product->save();
        }


        return redirect('admin/product/edit/'.$product->id);
    }

    public function product_edit($product_id)
    {
        $product = Product::getSingle($product_id);
        if(!empty($product)){
            $data['getCategory'] = CategoryModel::getRecordActive();
            $data['getBrand'] = Brand::getRecordActive();
            $data['getColor'] = ColorModel::getRecordActive();
            $data['product'] = $product;
            $data['header_title'] = "Edit Product";
            return view('admin.product.edit', $data);
        }

    }

    // public function product_update(Request $request, $id)
    // {
    //     $request->validate([
    //         'slug' => 'required|unique:category,slug,'.$id
    //     ]);

    //     $category = CategoryModel::getSingle($id);
    //     $category->name = trim($request->name);
    //     $category->slug = trim($request->slug);
    //     $category->status = trim($request->status);
    //     $category->meta_title = trim($request->meta_title);
    //     $category->meta_description = trim($request->meta_description);
    //     $category->meta_keyword = trim($request->meta_keyword);
    //     $category->save();

    //     return redirect('admin/category/list')->with('success', 'Category Successfully Updated!');
    // }

    // public function product_delete($id)
    // {
    //     $category =  CategoryModel::getSingle($id);
    //     $category->is_delete = 1;
    //     $category->save();
    //     return redirect('admin/category/list')->with('success', 'Category Successfully Deleted!');
    // }
}
