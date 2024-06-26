<?php

namespace App\Http\Controllers\Admin;

use App\Models\Brand;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class BrandController extends Controller
{
    public function list()
    {
        $data['getRecord'] = Brand::getRecord();
        $data['header_title'] = "Brand Lists";
        return view('admin.brand.list', $data);
    }

    public function add()
    {
        $data['header_title'] = "Add New Brand";
        return view('admin.brand.add', $data);
    }

    public function insert(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'slug' => 'required|unique:brand',
            'status' => 'required',
            'meta_title' => 'required',
        ]);

        $brand = new Brand;
        $brand->name = trim($request->name);
        $brand->slug = trim($request->slug);
        $brand->status = trim($request->status);
        $brand->meta_title = trim($request->meta_title);
        $brand->meta_description = trim($request->meta_description);
        $brand->meta_keyword = trim($request->meta_keyword);
        $brand->created_by = Auth::user()->id;
        $brand->save();

        return redirect('admin/brand/list')->with('success', 'Brand Successfully Created!');
    }

    public function edit($id)
    {
        $data['getRecord'] = Brand::getSingle($id);
        $data['header_title'] = "Edit Brand";
        return view('admin.brand.edit', $data);
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'slug' => 'required|unique:brand,slug,'.$id
        ]);

        $brand = Brand::getSingle($id);
        $brand->name = trim($request->name);
        $brand->slug = trim($request->slug);
        $brand->status = trim($request->status);
        $brand->meta_title = trim($request->meta_title);
        $brand->meta_description = trim($request->meta_description);
        $brand->meta_keyword = trim($request->meta_keyword);
        $brand->save();

        return redirect('admin/brand/list')->with('success', 'Brand Successfully Updated!');
    }

    public function delete($id)
    {
        $brand =  Brand::getSingle($id);
        $brand->is_delete = 1;
        $brand->save();
        return redirect('admin/brand/list')->with('success', 'Brand Successfully Deleted!');
    }
}
