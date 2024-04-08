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
                                <h1>Edit Sub Category</h1>
                                <a class="btn btn-sm btn-success" href="{{ url('admin/sub_category/list') }}">Sub Category Lists</a>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body p-3">
                                <form action="" method="post">
                                    @csrf
                                    <div class="form-group mb-2">
                                        <label for="name">Name <span class="text-danger">*</span></label>
                                       <select name="category_id" class="form-control" id="">
                                        <option value="">-- Select Category --</option>
                                        @foreach ($getCategory as $value)
                                            <option {{ ($value->id == $getRecord->category_id) ? 'selected':'' }} value="{{ $value->id }}">{{ $value->name }}</option>
                                        @endforeach
                                       </select>
                                    </div>

                                    <div class="form-group mb-2">
                                        <label for="name">Name <span class="text-danger">*</span></label>
                                        <input type="text" name="name" value="{{ old('name', $getRecord->name) }}" class="form-control mt-2">
                                    </div>

                                    <div class="form-group mb-2">
                                        <label for="name">Slug <span class="text-danger">*</span></label>
                                        <input type="text" name="slug" value="{{ old('slug',$getRecord->slug) }}" class="form-control mt-2">
                                        <span class="text-danger">
                                            @error('slug')
                                            {{ $message }}
                                            @enderror
                                        </span>
                                    </div>

                                    <div class="form-group mb-2">
                                        <label for="status">Status <span class="text-danger">*</span></label>
                                        <select name="status" class="form-control" required>
                                            <option {{ (old('status',$getRecord->status) == 0) ? 'selected' : '' }} value="0">Active</option>
                                            <option {{ (old('status',$getRecord->status) == 1) ? 'selected' : '' }} value="1">Inactive</option>
                                        </select>
                                    </div>
                                    <hr>
                                    <h4 class="text-info">SEO Keyword</h4>
                                    <hr>
                                    <div class="form-group mb-2">
                                        <label for="name">Meta Title <span class="text-danger">*</span></label>
                                        <input type="text" name="meta_title" value="{{ $getRecord->meta_title }}" class="form-control mt-2">
                                    </div>
                                    <div class="form-group mb-2">
                                        <label for="meta_description">Meta Description</label>
                                        <textarea name="meta_description" class="form-control mt-2" id="meta_description" cols="30" rows="5">{{ $getRecord->meta_description }}</textarea>
                                    </div>
                                    <div class="form-group mb-2">
                                        <label for="meta_keyword">Meta Keyword</label>
                                        <textarea name="meta_keyword" class="form-control mt-2" id="meta_keyword" cols="30" rows="3">{{ $getRecord->meta_keyword }}</textarea>
                                    </div>
                                    <button class="btn btn-md btn-info mt-3" type="submit">Edit Sub Category</button>
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
