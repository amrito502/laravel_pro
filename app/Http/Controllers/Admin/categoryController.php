<?php

namespace App\Http\Controllers\Admin;

use App\Models\User;
use Illuminate\Http\Request;
use App\Models\CategoryModel;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class categoryController extends Controller
{
    public function category_lists()
    {
        $data['getRecord'] = CategoryModel::getRecord();
        $data['header_title'] = "Category Lists";
        return view('admin.category.list', $data);
    }

    public function category_add()
    {
        $data['header_title'] = "Add New Category";
        return view('admin.category.add', $data);
    }

    public function category_insert(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'slug' => 'required|unique:category',
            'status' => 'required',
            'meta_title' => 'required',
        ]);

        $category = new CategoryModel;
        $category->name = trim($request->name);
        $category->slug = trim($request->slug);
        $category->status = trim($request->status);
        $category->meta_title = trim($request->meta_title);
        $category->meta_description = trim($request->meta_description);
        $category->meta_keyword = trim($request->meta_keyword);
        $category->created_by = Auth::user()->id;
        $category->save();

        return redirect('admin/category/list')->with('success', 'Category Successfully Created!');
    }

    public function category_edit($id)
    {
        $data['getRecord'] = CategoryModel::getSingle($id);
        $data['header_title'] = "Update Category";
        return view('admin.category.edit', $data);
    }

    public function category_update(Request $request, $id)
    {
        $request->validate([
            'slug' => 'required|unique:category,slug,'.$id
        ]);

        $category = CategoryModel::getSingle($id);
        $category->name = trim($request->name);
        $category->slug = trim($request->slug);
        $category->status = trim($request->status);
        $category->meta_title = trim($request->meta_title);
        $category->meta_description = trim($request->meta_description);
        $category->meta_keyword = trim($request->meta_keyword);
        $category->save();

        return redirect('admin/category/list')->with('success', 'Category Successfully Updated!');
    }

    public function category_delete($id)
    {
        $category =  CategoryModel::getSingle($id);
        $category->is_delete = 1;
        $category->save();
        return redirect('admin/category/list')->with('success', 'Category Successfully Deleted!');
    }
}
