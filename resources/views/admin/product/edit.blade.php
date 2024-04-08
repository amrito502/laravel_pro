@extends('admin.layouts.app')
{{-- ========start-style====== --}}
@section('style')
    {{-- <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet"> --}}
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
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
                                @include('admin.layouts._messages')
                                <form action="" method="post">
                                    @csrf

                                    <div class="row">

                                        <div class="col-md-6">
                                            <div class="form-group mb-2">
                                                <label for="name">Title <span class="text-danger">*</span></label>
                                                <input type="text" name="title"
                                                    value="{{ old('title', $product->title) }}" placeholder="Title"
                                                    class="form-control mt-2">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group mb-2">
                                                <label for="name">Sku <span class="text-danger">*</span></label>
                                                <input type="text" name="sku" value="{{ old('sku', $product->sku) }}"
                                                    placeholder="Sku" class="form-control mt-2">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group mb-2">
                                                <label for="name">Category <span class="text-danger">*</span></label>
                                                <select name="category_id" id="ChangeCategory" class="form-control">
                                                    <option value="">-- Select Category --</option>
                                                    @foreach ($getCategory as $category)
                                                        <option
                                                            {{ $product->category_id == $category->id ? 'selected' : '' }}
                                                            value="{{ $category->id }}">{{ $category->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group mb-2">
                                                <label for="name">Sub Category <span
                                                        class="text-danger">*</span></label>
                                                <select name="sub_category_id" id="getSubCategory" class="form-control">
                                                    <option value="">-- Select Sub Category --</option>
                                                    @foreach ($getSubCategory as $subCategory)
                                                        <option
                                                            {{ $product->sub_category_id == $subCategory->id ? 'selected' : '' }}
                                                            value="{{ $subCategory->id }}">{{ $subCategory->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group mb-2">
                                                <label for="name">Brand <span class="text-danger">*</span></label>
                                                <select name="brand_id" class="form-control">
                                                    <option value="">-- Select Brand --</option>
                                                    @foreach ($getBrand as $brand)
                                                        <option {{ $product->brand_id == $brand->id ? 'selected' : '' }}
                                                            value="{{ $brand->id }}">{{ $brand->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="price">Price ($)<span
                                                                class="text-danger">*</span></label>
                                                        <input type="text" name="price"
                                                            value="{{ old('price', $product->price) }}" placeholder="Price"
                                                            class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="old_price">Old Price ($)<span
                                                                class="text-danger">*</span></label>
                                                        <input type="text" name="old_price"
                                                            value="{{ old('old_price', $product->old_price) }}"
                                                            placeholder="Old Price" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="">Color <span class="text-danger">*</span></label>
                                                @foreach($getColor as $color)

                                                    <div>
                                                        <label><input type="checkbox" name="color_id[]"
                                                                value="{{ $color->id }}"> {{ $color->name }}</label>
                                                    </div>
                                                @endforeach
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="">Size <span class="text-danger">*</span></label>
                                                <div>
                                                    <table class="table table-bordered">
                                                        <thead>
                                                            <tr>
                                                                <th>Name</th>
                                                                <th>Price ($)</th>
                                                                <th>Action</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody id="AppendSize">
                                                            <tr>
                                                                <td>
                                                                    <input type="text" name="" placeholder="Name"
                                                                        class="form-control">
                                                                </td>
                                                                <td>
                                                                    <input type="text" name="" placeholder="Price"
                                                                        class="form-control">
                                                                </td>
                                                                <td>
                                                                    <button type="button"
                                                                        class="btn btn-info btn-sm AddSize">Add</button>

                                                                </td>
                                                            </tr>

                                                        </tbody>
                                                    </table>
                                                </div>

                                            </div>
                                        </div>


                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="short_description">Short Description <span
                                                        class="text-danger">*</span></label>
                                                <textarea name="short_description" class="form-control" cols="30" rows="3">{{ $product->short_description }}</textarea>
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="description">Description <span
                                                        class="text-danger">*</span></label>
                                                <textarea name="description" class="form-control summernote" cols="30" rows="4">{!! $product->description !!}</textarea>
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="additional_information">Additional Information <span
                                                        class="text-danger">*</span></label>
                                                <textarea name="additional_information" class="form-control summernote" cols="30" rows="3">{!! $product->additional_information !!}</textarea>
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="shipping_returns">Shipping Returns <span
                                                        class="text-danger">*</span></label>
                                                <textarea name="shipping_returns" class="form-control summernote" cols="30" rows="3">{!! $product->shipping_returns !!}</textarea>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group mb-2">
                                                <label for="status">Status <span class="text-danger">*</span></label>
                                                <select name="status" class="form-control" required>
                                                    <option {{ old('status', $product->status) == 0 ? 'selected' : '' }}
                                                        value="0">Active</option>
                                                    <option {{ old('status', $product->status) == 1 ? 'selected' : '' }}
                                                        value="1">Inactive</option>
                                                </select>
                                            </div>
                                        </div>

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
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

    <script>
        $(document).ready(function() {
            $('.summernote').summernote({
                tabsize: 2,
                height: 240
            });
        });
    </script>
    <script>
        var i = 1000;
        // add size
        $('body').delegate('.AddSize', 'click', function(e) {
            var html = '<tr id="DeleteSize' + i + '">\n\
                                    <td>\n\
                                        <input type="text" name="" placeholder="Name" class="form-control">\n\
                                    </td>\n\
                                    <td>\n\
                                        <input type="text" name="" placeholder="Price" class="form-control">\n\
                                    </td>\n\
                                    <td>\n\
                                        <button type="button" id="' + i + '" class="btn btn-danger btn-sm DeleteSize">Delete</button>\n\
                                    </td>\n\
                                </tr>';
            i++;
            $('#AppendSize').append(html);
        });


        $('body').delegate('.DeleteSize', 'click', function() {
            var id = $(this).attr('id');
            $('#DeleteSize' + id).remove();
        });


        // category-subcategory-update
        $('body').delegate('#ChangeCategory', 'change', function(e) {
            var id = $(this).val();
            $.ajax({
                type: "POST",
                url: "{{ url('admin/get_sub_category') }}",
                data: {
                    "id": id,
                    "_token": "{{ csrf_token() }}",

                },
                dataType: "json",
                success: function(data) {
                    $('#getSubCategory').html(data.html);
                },
                error: function(data) {

                },
            });
        });
    </script>
@endsection
