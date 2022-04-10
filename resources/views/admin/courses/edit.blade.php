@extends('layouts.admin_layout')

@section('title', 'Изменение курса')

@section('content')

    <!-- Сообщение при успешном редактировании -->
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
                    <form action="{{ route('courses.update', $course['id'])}}" method="POST">
                    @csrf
                    @method('PUT')

                    <!-- Заголовок -->
                        <div class="card-header">
                            <h3 class="card-title">Изменение курса</h3>
                        </div>

                        <div class="card-body">

                            <!-- Поле наименование -->
                            <div class="form-group">
                                <label for="inputName">Наименование</label>
                                <input value="{{ $course['name']}}" type="text" id="inputName" name="name" class="form-control" required>
                            </div>
                            <!-- Поле описание -->
                            <div class="form-group">
                                <label for="inputDescription">Описание</label>
                                <textarea id="inputDescription" name="description" class="form-control" rows="4" required>{{ $course['description'] }}</textarea>
                            </div>
                            <!-- Поле выбор фото -->
                            <div class="form-group">
                                <label for="exampleInputFile">Фото</label>
                                <div class="input-group">
                                    <div class="custom-file">
                                        <input value="{{ $course['img']}}" type="file" name="img" class="custom-file-input" id="exampleInputFile" required>
                                        <label class="custom-file-label" for="exampleInputFile">Выберите файл</label>
                                    </div>
                                </div>
                            </div>
                            <!-- Поле подзаголовок -->
                            <div class="form-group">
                                <label for="inputClientCompany">Подзаголовок</label>
                                <input value="{{ $course['subtitle']}}" type="text" name="subtitle" id="inputClientCompany" class="form-control" required>
                            </div>
                            <!-- Поле текст подзаголовка -->
                            <div class="form-group">
                                <label for="inputProjectLeader">Текст подзаголовка</label>
                                <textarea id="inputDescription" name="subtitle_text" class="form-control" rows="4" required>{{ $course['subtitle_text'] }}</textarea>
                            </div>
                            <!-- Поле содержание -->
                            <div class="form-group">
                                <label for="inputProjectLeader">Содержание</label>
                                <textarea id="inputDescription" name="content_course" class="form-control" rows="4" required>{{ $course['content'] }}</textarea>
                            </div>
                            <!-- Кнопка изменить -->
                            <div class="col-12">
                                <input type="submit" value="Изменить" class="btn btn-success float-right">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
@endsection
