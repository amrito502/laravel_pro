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
                               <h1>Color Lists</h1>
                               <a class="btn btn-sm btn-success" href="{{ url('admin/color/add') }}">Add New Color</a>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body p-0">
                                @include('admin.layouts._messages')
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Name</th>
                                            <th>Color Code</th>
                                            <th>Created By</th>
                                            <th>Status</th>
                                            <th>Created Date</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                      @foreach ($getRecord as $value)
                                        <tr>
                                            <td>{{ $value->id }}</td>
                                            <td>{{ $value->name }}</td>
                                            <td style="position: relative;">{{ $value->code }} <span style="background: {{ $value->code }};display: inline-block;width: 50px;height: 20px;position: absolute;top: 15px;left: 78px;border-radius: 5px;"></span></td>
                                            <td>{{ $value->created_by_name }}</td>
                                            <td>{{ ($value->status == 0) ? 'Active':'Inactive' }}</td>
                                            <td>{{ date('d-m-Y', strtotime($value->created_at)) }}</td>
                                            <td>
                                                <a href="{{ url('admin/color/edit/'.$value->id) }}" class="btn btn-sm btn-info">Edit</a>
                                                <a href="{{ url('admin/color/delete/'.$value->id) }}" class="btn btn-sm btn-danger">Delete</a>
                                            </td>
                                        </tr>
                                      @endforeach
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.card-body -->
                        </div>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>
    </div>
@endsection
{{-- ========scripts====== --}}
@section('scripts')
@endsection
