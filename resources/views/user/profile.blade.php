@extends('layouts.user_layout')

@section('title')
    Личный кабинет
@endsection



@section('content')


    <!-- PROFILE -->
    <section class="profile container">
        <div class="wrapper">
            <div class="profile-card js-profile-card">
                <div class="profile-card__img">
                    <img src="https://i.pinimg.com/564x/20/5a/c8/205ac833d83d23c76ccb74f591cb6000.jpg" alt="profile card">
                </div>

                <div class="profile-card__cnt js-profile-cnt">
                    <div class="profile-card__name">{{ Auth::user()->name }}</div>
                    <div class="profile-card__txt">{{ Auth::user()->email }}</div>

                    <div class="profile-card__progress" style="margin-top: 50px">

                        @foreach($courses as $course)
                            <p class="profile-card__txt">{{ $course->name }} имеет:  {{ $lessons->where('id_course', $course->id)->count()}} уроков(а)</p>
                        @endforeach
                            <p class="card_text"> Всего пройдено: {{$userAnswer->where('id_status', 2)->where('id_user', Auth::user()->id)->count()}}</p>

                    <div class="profile-card-ctr">

                    </div>
                </div>

                <div class="profile-card-message js-message">
                    <div class="profile-card__overlay js-message-close"></div>
                </div>

            </div>
        </div>

        </div>
    </section>

    <style>
        .card_text{
            font-size: 24px;
            font-weight: bold;
        }
    </style>
    <!-- PROFILE END -->
@endsection
