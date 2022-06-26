@extends('layouts.app')

@section('title')Авторизация@endsection

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-9">
            <div class="card" style="border: 15px solid #4E5AFF; border-radius: 35px; padding: 0 30px 0 0; background-color: #ffffff !important;">
                <div class="card-body">
                    <form method="POST" style="display: flex; align-items: center" action="{{ route('login') }}">
                        @csrf

                        <img src="/img/login-img.png" class="m-3" alt="">

                        <div style="width: 100%">

                            <h2 class="mb-3" style="font-style: normal;
font-weight: 600;
font-size: 24px;
line-height: 29px;


color: #000000;">Авторизация</h2>

                        <div class="row mb-3">
                            <div class="col-md-12">
                                <input id="email" placeholder="Email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-12">
                                <input id="password" placeholder="Пароль" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

{{--                        <div class="row mb-3">--}}
{{--                            <div class="col-md-12 offset-md-4">--}}
{{--                                <div class="form-check">--}}
{{--                                    <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>--}}

{{--                                    <label class="form-check-label" for="remember">--}}
{{--                                        {{ __('Запомнить меня') }}--}}
{{--                                    </label>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}

                        <div class="row mb-0">
                            <div class="col-md-12" style="display: flex; align-items: center">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Войти') }}
                                </button>

                                @if (Route::has('register'))

                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Нет аккаунта?') }}</a>

                                @endif
                            </div>
                        </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>



<!--===== MAIN JS =====-->
<script src="assets/js/main.js"></script>
@endsection
