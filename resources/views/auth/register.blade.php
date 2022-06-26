@extends('layouts.app')

@section('title')Регистрация@endsection

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-9">
            <div class="card" style="border: 15px solid #4E5AFF; border-radius: 35px; padding: 0 30px 0 0; background-color: #ffffff !important;">
                <div class="card-body">
                    <form method="POST" style="display: flex; align-items: center" action="{{ route('register') }}">
                        @csrf


                        <img src="/img/register-img.png" class="m-3" alt="">

                        <div style="width: 100%">

                        <h2 class="mb-3" style="font-style: normal;
font-weight: 600;
font-size: 24px;
line-height: 29px;


color: #000000;">Регистрация</h2>


                        <div class="row mb-3">
                            <div class="col-md-12">
                                <input id="name" placeholder="Логин" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-12">
                                <input id="email" placeholder="Email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-12">
                                <input id="password" placeholder="Пароль" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-12">
                                <input placeholder="Повторите пароль" id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                            </div>
                        </div>

                        <div class="row mb-0">
                            <div class="col-md-12" style="display: flex; align-items: center">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Зарегистрироваться') }}
                                </button>

                                @if (Route::has('login'))

                                        <a class="nav-link" href="{{ route('login') }}">{{ __('Уже есть аккаунт?') }}</a>

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
@endsection
