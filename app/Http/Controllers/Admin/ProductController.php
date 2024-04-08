<?php

namespace App\Http\Controllers\Admin;

use App\Models\Brand;
use App\Models\Product;
use App\Models\ColorModel;
use App\Models\SubCategory;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Models\CategoryModel;
use App\Models\ProductColorModel;
use App\Http\Controllers\Controller;
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
            $data['getSubCategory'] = SubCategory::getRecordSubCategory($product->category_id);
            $data['header_title'] = "Edit Product";
            return view('admin.product.edit', $data);
        }

    }

    public function product_update(Request $request, $product_id)
    {
        $product = Product::getSingle($product_id);
        if(!empty($product)){
            $product->title = trim($request->title);
            $product->sku = trim($request->sku);
            $product->category_id = trim($request->category_id);
            $product->sub_category_id = trim($request->sub_category_id);
            $product->brand_id = trim($request->brand_id);
            $product->old_price = trim($request->old_price);
            $product->price = trim($request->price);
            $product->short_description = trim($request->short_description);
            $product->description = trim($request->description);
            $product->additional_information = trim($request->additional_information);
            $product->shipping_returns = trim($request->shipping_returns);
            $product->status = trim($request->status);
            $product->save();

            ProductColorModel::DeleteRecord($product->id);

            if(!empty($request->color_id)){
                foreach($request->color_id as $color_id){
                    $color = new ProductColorModel;
                    $color->color_id = $color_id;
                    $color->product_id = $product->id;
                    $color->save();
                }
            }
        }
        else
        {
            abort(404);
        }

        return redirect()->back()->with('success', 'Product Successfully Updated!');
    }

    // public function product_delete($id)
    // {
    //     $category =  CategoryModel::getSingle($id);
    //     $category->is_delete = 1;
    //     $category->save();
    //     return redirect('admin/category/list')->with('success', 'Category Successfully Deleted!');
    // }
}
