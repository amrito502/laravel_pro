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
                                <h1>Edit Brand</h1>
                                <a class="btn btn-sm btn-success" href="{{ url('admin/brand/list') }}">Brand Lists</a>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body p-3">
                                <form action="" method="post">
                                    @csrf
                                    <div class="form-group mb-2">
                                        <label for="name">Brand Name <span class="text-danger">*</span></label>
                                        <input type="text" name="name" value="{{ old('name', $getRecord->name) }}" placeholder="Brand Name" class="form-control mt-2">
                                    </div>

                                    <div class="form-group mb-2">
                                        <label for="name">Brand Slug <span class="text-danger">*</span></label>
                                        <input type="text" name="slug" value="{{ old('slug', $getRecord->slug) }}" placeholder="Brand Slug" class="form-control mt-2">
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
                                        <input type="text" name="meta_title" value="{{ old('meta_title', $getRecord->meta_title) }}" class="form-control mt-2">
                                    </div>
                                    <div class="form-group mb-2">
                                        <label for="meta_description">Meta Description</label>
                                        <textarea name="meta_description" class="form-control mt-2" id="meta_description" cols="30" rows="5">{{ old('meta_description', $getRecord->meta_description) }}</textarea>
                                    </div>
                                    <div class="form-group mb-2">
                                        <label for="meta_keyword">Meta Keyword</label>
                                        <textarea name="meta_keyword" class="form-control mt-2" id="meta_keyword" cols="30" rows="3">{{ old('meta_keyword', $getRecord->meta_keyword) }}</textarea>
                                    </div>
                                    <button class="btn btn-md btn-info mt-3" type="submit">Update Brand</button>
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
