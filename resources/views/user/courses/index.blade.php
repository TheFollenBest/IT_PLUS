@extends('layouts.user_layout')

@section('title')
    Все курсы
@endsection

@section('content')

    <!-- KNOWLEDGE -->
    <section class="knowledge container">
        <h2 class="knowledge__title">Актуальные знания для новичков и практикующих специалистов</h2>
        <p class="knowledge__text">На платформе можно получить знания по актуальным темам и востребованные навыки. Все курсы нацелены на практику.</p>
    </section>
    <!-- KNOWLEDGE END -->


    <!-- CARDS -->
    <section class="cards container" style="padding-bottom: 100px">
        <h2 class="cards__title">Все курсы</h2>
        <hr class="cards__border">
        <ul class="cards__list">
            @foreach($courses as $course)
            <li class="cards__item cards__item--blue cards-item" style="background-color: {{ $course->card_color }}; color: {{ $course->font_color }}!important">
                <img src="img/{{ $course->card_img }}" alt="">
                <p style="color: {{ $course->font_color }}" class="cards-item__title cards-item__title--white">{{ $course->name }}</p>
                <a href="{{ route('user_courses.show', $course) }}" class="cards-item__link cards-item__link--white">Подробнее</a>
            </li>
            @endforeach
        </ul>
    </section>
    <!-- CARDS END -->

@endsection
