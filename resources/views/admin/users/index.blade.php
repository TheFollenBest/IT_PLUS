@extends('layouts.admin_layout')

@section('title', 'Список пользователей')

@section('content')
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Список пользователей</h3>

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
                            <th>Имя</th>
                            <th>Email</th>
                            <th>Роль</th>
                            <th>Дата регистрации</th>
                            <th style="width:20%"></th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($users as $user)

                            <tr>
                                <td>{{$user['id']}}</td>
                                <td>{{$user['name']}}</td>
                                <td>{{$user['email']}}</td>
                                <td>{{$user->getRoleNames()}}</td>
                                <td>{{$user['created_at']}}</td>

                                <!-- Кнопки взаимодействий -->
                                <td class="project-actions text-right">

                                    <!-- Кнопка блокировки -->
                                    <form class="d-inline" action="{{ route('users.update', $user['id']) }}" method="POST">
                                        @csrf
                                        @method('PUT')

                                        @if ($user->hasRole('admin'))
                                            <button class="btn btn-warning btn-sm " href="#" disabled>
                                                <i class="fas fa-ban"></i>
                                            </button>
                                        @else
                                            @if ($user->hasRole('user'))
                                                <button class="btn btn-warning btn-sm" href="#">
                                                    <i class="fas fa-ban"></i>
                                                </button>
                                            @else
                                                <button class="btn btn-success btn-sm" href="#">
                                                    <i class="fas fa-check"></i>
                                                </button>
                                            @endif

                                        @endif
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
