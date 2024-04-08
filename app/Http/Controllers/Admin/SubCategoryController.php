<?php

namespace App\Http\Controllers\Admin;

use App\Models\SubCategory;
use Illuminate\Http\Request;
use App\Models\CategoryModel;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;


class SubCategoryController extends Controller
{

    public function sub_category_lists()
    {
        $data['getRecord'] = SubCategory::getRecord();
        $data['header_title'] = "Sub Category Lists";
        return view('admin.sub_category.list', $data);
    }

    public function sub_category_add()
    {
        $data['getCategory'] = CategoryModel::getRecord();
        $data['header_title'] = "Add New Sub Category";
        return view('admin.sub_category.add', $data);
    }

    public function sub_category_insert(Request $request)
    {
        $request->validate([

            'slug' => 'required|unique:sub_category'
        ]);

        $sub_category = new SubCategory;
        $sub_category->category_id = trim($request->category_id);
        $sub_category->name = trim($request->name);
        $sub_category->slug = trim($request->slug);
        $sub_category->status = trim($request->status);
        $sub_category->meta_title = trim($request->meta_title);
        $sub_category->meta_description = trim($request->meta_description);
        $sub_category->meta_keyword = trim($request->meta_keyword);
        $sub_category->created_by = Auth::user()->id;
        $sub_category->save();

        return redirect('admin/sub_category/list')->with('success', 'Sub Category Successfully Created!');
    }

    public function sub_category_edit($id)
    {
        $data['getCategory'] = CategoryModel::getRecord();
        $data['getRecord'] = SubCategory::getSingle($id);
        $data['header_title'] = "Update Category";
        return view('admin.sub_category.edit', $data);
    }

    public function sub_category_update(Request $request, $id)
    {
        $request->validate([
            'slug' => 'required|unique:sub_category,slug,'.$id
        ]);

        $sub_category = SubCategory::getSingle($id);
        $sub_category->category_id = trim($request->category_id);
        $sub_category->name = trim($request->name);
        $sub_category->slug = trim($request->slug);
        $sub_category->status = trim($request->status);
        $sub_category->meta_title = trim($request->meta_title);
        $sub_category->meta_description = trim($request->meta_description);
        $sub_category->meta_keyword = trim($request->meta_keyword);
        $sub_category->save();

        return redirect('admin/sub_category/list')->with('success', 'Sub Category Successfully Updated!');
    }

    public function sub_category_delete($id)
    {
        $sub_category =  SubCategory::getSingle($id);
        $sub_category->is_delete = 1;
        $sub_category->save();
        return redirect('admin/sub_category/list')->with('success', 'Category Successfully Deleted!');
    }
}
