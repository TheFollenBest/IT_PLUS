@extends('layouts.user_layout')

@section('title')
    Все уроки
@endsection

{{--@push('style')--}}
{{--    <link rel="stylesheet" href="https://pyscript.net/alpha/pyscript.css" />--}}
{{--    <script defer src="https://pyscript.net/alpha/pyscript.js"></script>--}}
{{--@endpush--}}

@section('content')

    <section class="cards container" style="min-height: 60vh; padding-bottom: 100px">
        <h2 class="cards__title">Все уроки этого курса</h2>
        <hr class="cards__border">
        <ul class="cards__list">
            @foreach($courseLesson as $lesson)
                <li class="cards__item cards__item--blue cards-item">
                    <p class="cards-item__title cards-item__title--white">{{ $lesson->name }}</p>
{{--                    <a href="{{ route('user_lessons.show', $lesson['id']) }}" class="cards-item__link cards-item__link--white">Подробнее</a>--}}
                    <a href="{{ route('user_lessons.edit', [$course, $lesson]) }}" class="cards-item__link cards-item__link--white">Начать</a>

                </li>

            @endforeach
        </ul>
    </section>


    <style>
        .cards__item {
             width: 1000px;
            min-height: 80px;
            border-radius: 20px;
            padding: 20px 15px;
            display: flex;
            flex-direction: row;
            /* align-items: center; */
            justify-content: space-between;
            border: black solid 4px;
        }

        .cards-item__title {
            padding: 0;
            font-family: "Montserrat";
            font-style: normal;
            font-weight: 600;
            font-size: 24px;
            line-height: 39px;
        }
    </style>

@endsection

