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
                               <h1>Admin Lists</h1>
                               <a class="btn btn-sm btn-success" href="{{ url('admin/admin/add') }}">Add New Admin</a>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body p-0">
                                @include('admin.layouts._messages')
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                      @foreach ($getRecord as $value)
                                        <tr>
                                            <td>{{ $value->id }}</td>
                                            <td>{{ $value->name }}</td>
                                            <td>{{ $value->email }}</td>
                                            <td>{{ ($value->status == 0) ? 'Active':'Inactive' }}</td>
                                            <td>
                                                <a href="{{ url('admin/admin/edit/'.$value->id) }}" class="btn btn-sm btn-info">Edit</a>
                                                <a href="{{ url('admin/admin/delete/'.$value->id) }}" class="btn btn-sm btn-danger">Delete</a>
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
