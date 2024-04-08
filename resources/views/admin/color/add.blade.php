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
                                <h1>Add New Color</h1>
                                <a class="btn btn-sm btn-success" href="{{ url('admin/color/list') }}">Color Lists</a>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body p-3">
                                <form action="" method="post">
                                    @csrf
                                    <div class="form-group mb-2">
                                        <label for="name">Color Name <span class="text-danger">*</span></label>
                                        <input type="text" name="name" value="{{ old('name') }}" placeholder="Brand Name" class="form-control mt-2">
                                    </div>

                                    <div class="form-group mb-2">
                                        <label for="code">Color Code <span class="text-danger">*</span></label>
                                        <input type="color" name="code" value="{{ old('code') }}" class="form-control mt-2">
                                    </div>

                                    <div class="form-group mb-2">
                                        <label for="status">Status <span class="text-danger">*</span></label>
                                        <select name="status" class="form-control" required>
                                            <option {{ (old('status') == 0) ? 'selected' : '' }} value="0">Active</option>
                                            <option {{ (old('status') == 1) ? 'selected' : '' }} value="1">Inactive</option>
                                        </select>
                                    </div>

                                    <button class="btn btn-md btn-info mt-3" type="submit">Add Color</button>
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
