@extends('admin.layouts.app')
{{-- ========start-style====== --}}
@section('style')
@endsection
{{-- ========end-style====== --}}
@section('content')
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-12 col-md-12 col-lg-12">
                        <div class="card">
                            <div class="card-header d-flex justify-content-between">
                                <h1>Add New Admin</h1>
                                <a class="btn btn-sm btn-success" href="{{ url('admin/admin/list') }}">Admin Lists</a>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body p-3">
                                <p class="text-center text-success my-3">
                                    <?php

                                    use Illuminate\Support\Facades\Session;

                                    $message = Session::get('success');
                                    if ($message) {
                                        echo $message;
                                        Session::put('success', null);
                                    }
                                    ?>
                                </p>
                                <form action="" method="post">
                                    @csrf
                                    <div class="form-group mb-2">
                                        <label for="name">Name</label>
                                        <input type="text" name="name" class="form-control mt-2">
                                        <span class="text-danger">
                                            @error('name')
                                            {{ $message }}
                                            @enderror
                                        </span>
                                    </div>
                                    <div class="form-group mb-2">
                                        <label for="email">Email</label>
                                        <input type="text" name="email" class="form-control mt-2">
                                        <span class="text-danger">
                                            @error('email')
                                            {{ $message }}
                                            @enderror
                                        </span>
                                    </div>
                                    <div class="form-group mb-2">
                                        <label for="password">Password</label>
                                        <input type="password" name="password" class="form-control mt-2">
                                        <span class="text-danger">
                                            @error('password')
                                            {{ $message }}
                                            @enderror
                                        </span>
                                    </div>
                                    <div class="form-group mb-2">
                                        <label for="status">Status</label>
                                        <select name="status" class="form-control">
                                            <option value="0">Active</option>
                                            <option value="1">Inactive</option>
                                        </select>
                                    </div>
                                    <button class="btn btn-md btn-info mt-3" type="submit">Add Admin</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
@endsection
{{-- ========scripts====== --}}
@section('scripts')
@endsection
