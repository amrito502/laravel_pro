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
                                <h1>Edit Product</h1>
                                <a class="btn btn-sm btn-success" href="{{ url('admin/product/list') }}">Product Lists</a>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body p-3">
                                <form action="" method="post">
                                    @csrf

                                    <div class="form-group mb-2">
                                        <label for="name">Title <span class="text-danger">*</span></label>
                                        <input type="text" name="title" value="{{ old('title',$product->title) }}" placeholder="Title" class="form-control mt-2">
                                    </div>

                                    <button class="btn btn-md btn-info mt-3" type="submit">Update Product</button>
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
