@extends('layouts.admin_layout')

@section('title', 'Список уроков')

<!-- Сообщение при успешном добавлении -->
@if (session('success'))
    <div class="alert alert-success" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        <h4><i class="icon fa fa-check"></i>{{ session('success') }}</h4>
    </div>
@endif

@section('content')
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Список уроков</h3>

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
                <div class="card-body table-responsive p-0" style="height: 300px;">
                    <table class="table table-head-fixed text-nowrap">
                        <thead>
                        <tr>
                            <th style="width:3%">ID</th>
                            <th>Наименование</th>
                            <th>Курс</th>
                            <th>Дата создания</th>
                            <th style="width:20%"></th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($lessons as $lesson)

                            <tr>
                                <td>{{$lesson['id']}}</td>
                                <td>{{$lesson['name']}}</td>
                                <td>{{$lesson-> courses -> name ?? ''}}</td>
                                <td>{{$lesson['created_at']}}</td>
                                <td class="project-actions text-right">
                                    <a class="btn btn-success btn-sm" href="{{ route('lessons.edit', $lesson['id']) }}">
                                        <i class="fa-solid fa-pen-to-square"></i>
                                    </a>
                                </td>

                                <td class="project-actions text-right">
                                    <form action="{{ route('lessons.destroy', $lesson['id']) }}" class="d-inline" method="POST">
                                        @csrf
                                        @method('DELETE')
                                        <button class="btn btn-success btn-sm" type="submit">
                                            <i class="fa-solid fa-pen-to-square"></i>
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
@endsection
