@extends('layouts.admin_layout')

@section('title', 'Изменение урока')

@push('script')
    <script src="/summernote/summernote-bs4.min.js"></script>
    <script src="/summernote/lang/summernote-ru-RU.min.js"></script>

    <script>

        let inputSubtitleText = $("#inputText");
        $(function() {
            inputSubtitleText.summernote({
                lang: 'ru-RU',
                height: 300,

                toolbar: [

                    ['style', ['style', 'bold', 'italic', 'underline', 'clear']],
                    ['font', ['strikethrough', 'superscript', 'subscript']],
                    ['fontsize', ['fontsize', 'fontname']],
                    ['color', ['color']],
                    ['para', ['ul', 'ol', 'paragraph']],
                    ['height', ['height']],
                    ['insert', ['link', 'picture', 'video']],
                    ['misc', ['undo', 'redo']]
                ]
            });


            inputSubtitleText.summernote('code', inputSubtitleText.attr('value'));
        });

        let inputContent = $("#inputManual");
        $(function() {
            inputContent.summernote({
                lang: 'ru-RU',
                height: 300,

                toolbar: [

                    ['style', ['style', 'bold', 'italic', 'underline', 'clear']],
                    ['font', ['strikethrough', 'superscript', 'subscript']],
                    ['fontsize', ['fontsize', 'fontname']],
                    ['color', ['color']],
                    ['para', ['ul', 'ol', 'paragraph']],
                    ['height', ['height']],
                    ['insert', ['link', 'picture', 'video']],
                    ['misc', ['undo', 'redo']]
                ]
            });

            inputContent.summernote('code', inputContent.attr('value'));
        });
    </script>
@endpush

@push('style')
    <link rel="stylesheet" href="/summernote/summernote-bs4.min.css">
@endpush

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
                                <label for="inputDescription">Текст задания</label>
                                <textarea id="inputText" name="text" class="form-control" rows="4" required>{{ $lesson['text'] }}</textarea>
                            </div>
                            <!-- Поле код -->
                            <div class="form-group">
                                <label for="inputDescription">Код <span style="color:grey">(необязательно)</span></label>
                                <textarea id="editor" name="code" class="form-control">{{ $lesson['code'] }}</textarea>
                            </div>
                            <!-- Поле методичка -->
                            <div class="form-group">
                                <label for="inputProjectLeader">Методический материал <span style="color:grey">(необязательно)</span></label>
                                <textarea id="inputManual" name="manual" class="form-control" rows="4">{{ $lesson['manual'] }}</textarea>
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

    <script>
        let editor = CodeMirror.fromTextArea
        (document.getElementById('editor'), {
            mode: "xml",
            theme: "dracula",
            lineNumbers: "true",
            autoCloseTags: "true",
            autoCloseBrackets: "true"
        });
    </script>
@endsection
