@extends('layouts.user_layout')

@section('title')
    О нас
@endsection

@section('content')
    <!-- ABOUT -->
    <section class="about container" style="margin-bottom: 150px">
        <div class="wrapper">
            <section class="preview-course container">
                <p class="preview-course__subtitle" style="margin-bottom: 20px; font-size: 32px">Cоздаем образование, которого заслуживает мир.</p>
                <div class="preview-course__wrp" style="background-color: #242424">
                    <div class="preview-course__wrp-inner">
                        <h2 class="preview-course__title">Об IT PLUS</h2>
                        <p class="preview-course__text">IT PLUS — это образовательная среда,
                            в которой ваш процесс обучения основан на реальных ситуациях. Вы учитесь программированию и с первого урока пишете код.

                        Среда изначально спроектирована
                            для онлайн-обучения — вам понадобится
                            компьютер и спокойное место, где вас не будут
                            отвлекать.</p>
                        <a href="{{route('index')}}" class="preview-course__btn">На главную</a>
                    </div>
                    <img class="preview-course__img" src="/img/illustration.png" alt="">
                </div>
            </section>
        </div>
    </section>
    <!-- ABOUT END -->
@endsection
