@extends('layouts.admin_layout')

@section('title', 'Изменение урока')

@section('content')

    <!-- Сообщение при успешном добавлении -->
    @if (session('success'))
        <div class="alert alert-success" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            <h4><i class="icon fa fa-check"></i>{{ session('success') }}</h4>
        </div>
    @endif

    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="card card-primary">
                    <form action="{{ route('lessons.update', $lesson['id']) }}" method="POST">
                    @csrf
                    @method('PUT')

                    <!-- Заголовок -->
                        <div class="card-header">
                            <h3 class="card-title">Изменение урока</h3>
                        </div>

                        <div class="card-body">

                            <!-- Поле наименование -->
                            <div class="form-group">
                                <label for="inputName">Наименование</label>
                                <input value="{{ $lesson['name'] }}" type="text" id="inputName" name="name" class="form-control" required>
                            </div>
                            <!-- Поле описание -->
                            <div class="form-group">
                                <label for="inputDescription">Текст</label>
                                <textarea id="inputDescription" name="text" class="form-control" rows="4" required>{{ $lesson['text'] }}</textarea>
                            </div>
                            <!-- Поле код -->
                            <div class="form-group">
                                <label for="inputDescription">Код</label>
                                <textarea id="inputDescription" name="code" class="form-control" rows="4" required>{{ $lesson['code'] }}</textarea>
                            </div>
                            <!-- Поле методичка -->
                            <div class="form-group">
                                <label for="inputProjectLeader">Методический материал</label>
                                <textarea id="inputDescription" name="manual" class="form-control" rows="4" required>{{ $lesson['manual'] }}</textarea>
                            </div>
                            <!-- Поле выбор курса -->
                            <div class="form-group">
                                <label>Курс</label>
                                <select class="form-control" name="selection_course">
                                    @foreach($courses as $course)
                                        <option value="{{ $course['id'] }}"@if($course['id'] == $lesson['id_course']) selected @endif>{{ $course['name'] }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <!-- Кнопка добавить -->
                            <div class="col-12">
                                <input type="submit" value="Изменить" class="btn btn-success float-right" required>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
@endsection
