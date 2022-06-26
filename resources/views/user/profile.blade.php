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


{{--                    <div class="profile-card-inf">--}}
{{--                        <div class="profile-card-inf__item">--}}
{{--                            <div class="profile-card-inf__title">1598</div>--}}
{{--                            <div class="profile-card-inf__txt">Followers</div>--}}
{{--                        </div>--}}

{{--                        <div class="profile-card-inf__item">--}}
{{--                            <div class="profile-card-inf__title">65</div>--}}
{{--                            <div class="profile-card-inf__txt">Following</div>--}}
{{--                        </div>--}}

{{--                        <div class="profile-card-inf__item">--}}
{{--                            <div class="profile-card-inf__title">123</div>--}}
{{--                            <div class="profile-card-inf__txt">Articles</div>--}}
{{--                        </div>--}}

{{--                        <div class="profile-card-inf__item">--}}
{{--                            <div class="profile-card-inf__title">85</div>--}}
{{--                            <div class="profile-card-inf__txt">Works</div>--}}
{{--                        </div>--}}
{{--                    </div>--}}

                    <div class="profile-card__progress">


                        @foreach($courses as $course)

                            <p>{{ $course->name }} пройдено: {{$userAnswer->where('id_status', 2)->where('id_user', Auth::user()->id)->count()}} из {{ $lessons->where('id_course', $course->id)->count()}}</p>
                        <div class="progress" style="height: 20px;">
                            <div class="progress-bar" role="progressbar" style="width: 25%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        @endforeach

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
    <!-- PROFILE END -->
@endsection
