<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
{
    public function admin_lists(){
        $data['getRecord'] = User::GetAdmin();
        $data['header_title'] = "Admin Lists";
        return view('admin.admin.list', $data);
    }

    public function admin_add(){
        $data['header_title'] = "Add New Admin";
        return view('admin.admin.add', $data);
    }

    public function insert(Request $request){
        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required',
        ]);

        $user = new User;
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        $user->is_admin = 1;
        $user->status = $request->status;
        $user->save();
        return redirect('admin/admin/list')->with('success','Admin Successfully Created!');
    }

    public function edit($id){
        $data['getRecord'] = User::getSingle($id);
        $data['header_title'] = "Update Admin";
        return view('admin.admin.edit', $data);
    }

    public function update(Request $request, $id){
        $user = User::find($id);
        $user->name = $request->name;
        $user->email = $request->email;
        if(!empty($request->password)){
            $user->password = Hash::make($request->password);
        }
        $user->is_admin = 1;
        $user->status = $request->status;
        $user->update();
        return redirect('admin/admin/list')->with('success','Admin Successfully Updated!');
    }

    public function delete($id){
        $user =  User::getSingle($id);
        $user->is_delete = 1;
        $user->save();
        return redirect()->back()->with('success','Admin Successfully Deleted!');
    }
}

