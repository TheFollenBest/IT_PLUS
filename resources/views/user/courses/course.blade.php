@extends('layouts.user_layout')

@section('title')
Курс - {{$course->name}}
@endsection

@section('content')

    <!-- PREVIEW -->
    <section class="preview-course container">
        <p class="preview-course__subtitle">Бесплатно</p>
        <div class="preview-course__wrp">
            <div class="preview-course__wrp-inner">
                <h2 class="preview-course__title">{{$course->name}}</h2>
                <p class="preview-course__text">{{$course->description}}</p>
                <a href="{{ route('user_lessons.index', $course) }}" class="preview-course__btn">Начать учиться</a>
            </div>
            <img class="preview-course__img" src="/img/{{$course->img}}" alt="html-course">
        </div>
    </section>
    <!-- PREVIEW END -->

    <!-- EDUCATION -->
    <section class="education container">
        <div class="education-wrp-top">
            <h2 class="education__title">{{$course->subtitle}}</h2>
            <p class="education__text">{!! $course->subtitle_text !!}</p>
        </div>
    </section>
    <!-- EDUCATION END -->

    <!-- LEARN -->
    <section class="learn container">
        <h2 class="learn__title">Что вы узнаете:</h2>
        <p class="learn-item__text">{!! $course->content !!}</p>
    </section>
    <!-- LEARN END -->

    <!-- FAQ -->
    <section class="faq container">
        <h2 class="faq__title">Часто задаваемые вопросы</h2>
        <div class="faq__wrp">
            <button class="faq__btn">У меня нет опыта в веб-разработке. Подходит ли мне этот курс?</button>
            <div class="faq__inner">
                <p class="faq__text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
            </div>

            <button class="faq__btn">Это бесплатно?</button>
            <div class="faq__inner">
                <p class="faq__text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
            </div>

            <button class="faq__btn">У меня нет опыта в веб-разработке. Подходит ли мне этот курс?</button>
            <div class="faq__inner">
                <p class="faq__text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
            </div>
        </div>
    </section>
    <!-- FAQ END -->

@endsection

