@extends('layouts.admin_layout')

@section('title', 'Список курсов')

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Список курсов</h3>

                        <div class="card-tools">
                            <div class="input-group input-group-sm" style="width: 150px;">
                                <input type="text" name="table_search" class="form-control float-right" placeholder="Поиск">

                                <div class="input-group-append">
                                    <button type="submit" class="btn btn-default">
                                        <i class="fas fa-search"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body table-responsive p-0">
                        <table class="table table-head-fixed text-nowrap">
                            <thead>
                            <tr>
                                <th style="width:3%">ID</th>
                                <th>Наименование</th>
                                <th>Описание</th>
                                <th>Дата создания</th>
                                <th style="width:20%"></th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($courses as $course)

                            <tr>
                                <td>{{$course['id']}}</td>
                                <td>{{$course['name']}}</td>
                                <td>{{$course['description']}}</td>
                                <td>{{$course['created_at']}}</td>

                                <td class="project-actions text-right">
                                    <a class="btn btn-success btn-sm" href="{{ route('courses.edit', $course['id']) }}">
                                        <i class="fa-solid fa-pen-to-square"></i>
                                    </a>
                                    <form action="{{ route('courses.destroy', $course['id']) }}" class="d-inline" method="POST">
                                        @csrf
                                        @method('DELETE')
                                        <button class="btn btn-danger btn-sm" type="submit">
                                            <i class="fa-solid fa-trash-can"></i>
                                        </button>
                                    </form>
                                </td>
                            </tr>

                            @endforeach
                            </tbody>
                        </table>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
        </div>
    </div>
@endsection