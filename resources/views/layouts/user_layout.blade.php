<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title')</title>
    <script src="{{ asset('js/app.js') }}" defer></script>
    <link rel="icon" href="/img/logo.ico">
    <link rel="stylesheet" href="/css/style.css">

    <script src="/codemirror/lib/codemirror.js"></script>
    <script src="/codemirror/mode/xml/xml.js"></script>
    <script src="/codemirror/mode/css/css.js"></script>
    <script src="/codemirror/mode/javascript/javascript.js"></script>
    <link rel="stylesheet" href="/codemirror/lib/codemirror.css">
    <link rel="stylesheet" href="/codemirror/theme/dracula.css">
    <script src="/codemirror/addon/edit/closetag.js"></script>

    @stack('style')
</head>

<body>
<!-- HEADER -->
<header class="header">
    <div class="header__wrp container">
        <a class="header__logo" href="{{route ('index')}}">
            IT<span class="header__logo--plus">+</span>PLUS
        </a>
        <nav class="header__nav">
            <ul class="header__nav-list nav-list">

                <li class="header__nav-item nav-item">
                    <a href="{{ route('user_courses.index') }}" class="nav-item__link">Курсы</a>
                </li>

                <li class="header__nav-item nav-item">
                    <a href="{{ route('index') }}#audience" class="nav-item__link">Для кого?</a>
                </li>

                <li class="header__nav-item nav-item">
                    <a href="{{ route('about') }}" class="nav-item__link">О нас</a>
                </li>
            </ul>
        </nav>
        @guest
            @if (Route::has('login'))
                <a class="nav-link header__login" href="{{ route('login') }}">{{ __('Войти') }}</a>
            @endif

        @else
            <div class="nav-item dropdown">
                <a id="navbarDropdown" class="nav-item__link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                    {{ Auth::user()->name }}
                </a>

                <div class="dropdown-menu dropdown-menu-end" style="padding-top: 15px" aria-labelledby="navbarDropdown">

                    @if (Auth::user()->hasRole('admin'))
                        <a class="dropdown-item" href="{{ route('homeAdmin') }}">Админ-панель</a>
                    @endif
                    <a class="dropdown-item" href="{{ route('profile.index') }}">Профиль</a>
                    <a class="dropdown-item" href="{{ route('logout') }}"
                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                        {{ __('Выход') }}
                    </a>
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                        @csrf
                    </form>
                </div>
            </div>
        @endguest
    </div>
</header>
<!-- HEADER END -->

@yield('content')

<!-- FOOTER -->
<footer class="footer">
    <div class="footer__wrp container">
        <a class="footer__logo" href="../index.blade.php">
            IT<span class="header__logo--plus">+</span>PLUS
        </a>
        <nav class="footer__nav">
            <ul class="footer__nav-list footer-nav-list">

                <li class="footer__nav-item footer-nav-item">
                    <a href="{{ route('user_courses.index') }}" class="footer-nav-item__link">Курсы</a>
                </li>

                <li class="footer__nav-item footer-nav-item">
                    <a href="{{ route('index') }}#audience" class="footer-nav-item__link">Для кого?</a>
                </li>

                <li class="footer__nav-item footer-nav-item">
                    <a href="{{ route('about') }}" class="footer-nav-item__link">О нас</a>
                </li>
            </ul>
        </nav>

        <ul class="footer__social-list">

            <li class="footer__social-item">
                <a href="" class="social-item__link">
                    <svg width="23" height="46" viewBox="0 0 23 46" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M18.5408 7.88312H22.463V0.686398C21.7863 0.58833 19.4591 0.367676 16.7489 0.367676C11.0938 0.367676 7.21993 4.11502 7.21993 11.0025V17.3411H0.979492V25.3865H7.21993V45.6301H14.871V25.3883H20.859L21.8096 17.343H14.8692V11.8002C14.871 9.47485 15.4653 7.88312 18.5408 7.88312Z" fill="white" />
                    </svg>
                </a>
            </li>

            <li class="footer__social-item">
                <a href="" class="social-item__link">
                    <svg width="48" height="42" viewBox="0 0 48 42" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M47.773 5.47489C46.0018 6.29342 44.1145 6.83596 42.1468 7.09939C44.171 5.82614 45.716 3.82531 46.4423 1.41365C44.555 2.59909 42.4713 3.43643 40.2506 3.90371C38.4585 1.89347 35.9044 0.648438 33.1181 0.648438C27.7123 0.648438 23.3602 5.27105 23.3602 10.938C23.3602 11.7534 23.4257 12.5374 23.5864 13.2838C15.4686 12.8667 8.28561 8.7678 3.46021 2.52382C2.61777 4.06365 2.12362 5.82614 2.12362 7.72348C2.12362 11.2861 3.86505 14.4441 6.46083 16.2725C4.89205 16.2411 3.35304 15.7613 2.0492 15.0055C2.0492 15.0369 2.0492 15.0776 2.0492 15.1184C2.0492 20.1173 5.43383 24.2695 9.87225 25.226C9.07744 25.455 8.21119 25.5647 7.3122 25.5647C6.68707 25.5647 6.05598 25.5271 5.4636 25.3891C6.72874 29.4629 10.3188 32.4579 14.5875 32.5551C11.2654 35.2929 7.04726 36.9425 2.48084 36.9425C1.68008 36.9425 0.912059 36.9049 0.144043 36.8014C4.46934 39.7399 9.59541 41.4177 15.1233 41.4177C33.0914 41.4177 42.9148 25.7372 42.9148 12.1454C42.9148 11.6906 42.8999 11.2516 42.8791 10.8157C44.817 9.36679 46.4453 7.55726 47.773 5.47489Z" fill="white" />
                    </svg>
                </a>
            </li>

            <li class="footer__social-item">
                <a href="" class="social-item__link">
                    <svg width="48" height="51" viewBox="0 0 48 51" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M15.2556 0.0869141H33.1165C41.3354 0.0869141 48.0005 7.10863 48.0005 15.7674V34.584C48.0005 43.2427 41.3354 50.2645 33.1165 50.2645H15.2556C7.03665 50.2645 0.371582 43.2427 0.371582 34.584V15.7674C0.371582 7.10863 7.03665 0.0869141 15.2556 0.0869141ZM33.1165 45.5603C38.8618 45.5603 43.5353 40.6366 43.5353 34.584V15.7674C43.5353 9.71469 38.8618 4.79102 33.1165 4.79102H15.2557C9.51044 4.79102 4.83686 9.71469 4.83686 15.7674V34.584C4.83686 40.6366 9.51044 45.5603 15.2557 45.5603H33.1165Z" fill="white" />
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M12.2788 25.1758C12.2788 18.2481 17.6103 12.6313 24.1861 12.6313C30.7619 12.6313 36.0934 18.2481 36.0934 25.1758C36.0934 32.1034 30.7619 37.7202 24.1861 37.7202C17.6103 37.7202 12.2788 32.1034 12.2788 25.1758ZM16.7441 25.1757C16.7441 29.4972 20.0841 33.0159 24.1862 33.0159C28.2883 33.0159 31.6283 29.4972 31.6283 25.1757C31.6283 20.851 28.2883 17.3354 24.1862 17.3354C20.0841 17.3354 16.7441 20.851 16.7441 25.1757Z" fill="white" />
                        <ellipse cx="36.9861" cy="11.6906" rx="1.58664" ry="1.67154" fill="white" />
                    </svg>
                </a>
            </li>
        </ul>
        <p class="footer__copy">&copy; ITPLUS, 2022</p>
    </div>
</footer>
<!-- FOOTER END -->
@stack('script')
<script src="js/accordion.js"></script>
</body>

</html>
