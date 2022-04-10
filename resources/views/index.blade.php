<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Главная</title>
    <script src="{{ asset('js/app.js') }}" defer></script>
    <link rel="stylesheet" href="css/style.css">

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
                        <a href="#" class="nav-item__link">Курсы</a>
                        <svg width="13" height="8" viewBox="0 0 13 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M1 1L6.5 6.5L12 1" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                        </svg>
                    </li>

                    <li class="header__nav-item nav-item">
                        <a href="#" class="nav-item__link">Программы</a>
                        <svg width="13" height="8" viewBox="0 0 13 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M1 1L6.5 6.5L12 1" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                        </svg>
                    </li>

                    <li class="header__nav-item nav-item">
                        <a href="#" class="nav-item__link">О нас</a>
                        <svg width="13" height="8" viewBox="0 0 13 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M1 1L6.5 6.5L12 1" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                        </svg>
                    </li>
                </ul>
            </nav>
                @guest
                    @if (Route::has('login'))
                            <a class="nav-link header__login" href="{{ route('login') }}">{{ __('Войти') }}</a>
                    @endif

{{--                    @if (Route::has('register'))--}}
{{--                        <li class="nav-item">--}}
{{--                            <a class="nav-link" href="{{ route('register') }}">{{ __('Регистрация') }}</a>--}}
{{--                        </li>--}}
{{--                    @endif--}}
                @else
                <div class="nav-item dropdown" style="padding-top: 15px">
                        <a id="navbarDropdown" class="nav-item__link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            {{ Auth::user()->name }}
                        </a>

                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                            @if (Auth::user()->hasRole('admin'))
                                <a class="dropdown-item" href="{{ route('homeAdmin') }}">Админ-панель</a>
                            @endif
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


    <main>

        <!-- ! Модалка -->
        <div id="myModal" class="modal">

            <!-- Модальное содержание -->
            <div class="modal-content">
                <img src="img/modal-img.png" class="modal__img" alt="modal-img">
                <form class="modal-form" action="POST">
                    @csrf
                    <p class="modal-title">Авторизация</p>
                    <input class="modal-input" type="text" placeholder="Логин">
                    <input class="modal-input" type="text" placeholder="Пароль">
                    <button class="modal-btn" type="submit">Войти</button>
                </form>
                <span class="close">&times;</span>
            </div>

        </div>
        <!-- ! -->

        <!-- PREVIEW -->
        <section class="preview">
            <div class="preview-wrp container">
                <div class="preview-wrp__left-line-1"></div>
                <div class="preview-wrp__left-line-2"></div>
                <div class="preview-wrp__left-line-3"></div>
                <div class="preview-wrp__left-line-4"></div>
                <div class="preview-wrp__left">
                    <p class="preview__subtitle">FREE</p>
                    <h1 class="preview__title">Образовательная платформа</h1>
                </div>
                <div class="preview-wrp__right">
                    <div class="container">
                        <p class="header__logo preview-wrp__right-logo">IT<span class="header__logo--plus">+</span>PLUS</p>
                        <p class="preview__title-right">Что это за сайт?</p>
                        <p class="preview__text">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do&nbsp;eiusmod tempor incididunt ut&nbsp;labore et&nbsp;dolore magna aliqua. Ut&nbsp;enim ad&nbsp;minim veniam, quis nostrud exercitation ullamco laboris nisi ut&nbsp;aliquip ex&nbsp;ea&nbsp;commodo consequat. Duis aute irure dolor in&nbsp;reprehenderit in&nbsp;voluptate velit esse cillum dolore eu&nbsp;fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in&nbsp;culpa qui officia deserunt mollit anim id&nbsp;est laborum.
                        </p>
                    </div>
                </div>
            </div>
        </section>
        <!-- PREVIEW END -->

        <!-- KNOWLEDGE -->
        <section class="knowledge container">
            <h2 class="knowledge__title">Актуальные знания для новичков и практикующих специалистов</h2>
            <p class="knowledge__text">На платформе можно получить знания по актуальным темам и востребованные навыки. Все курсы нацелены на практику.</p>
        </section>
        <!-- KNOWLEDGE END -->

        <!-- CARDS -->
        <section class="cards container">
            <h2 class="cards__title">Наши курсы</h2>
            <hr class="cards__border">
            <ul class="cards__list">
                <li class="cards__item cards__item--blue cards-item">
                    <svg width="150" height="150" viewBox="0 0 150 150" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <g clip-path="url(#clip0_1708_317)">
                            <path d="M128.125 62.4999C129.85 62.4999 131.25 61.0998 131.25 59.3748V21.8748C131.25 13.2624 124.244 6.24988 115.625 6.24988H15.6249C7.00635 6.24988 0 13.2624 0 21.8751V128.125C0 136.738 7.00635 143.75 15.6249 143.75H115.625C124.244 143.75 131.25 136.738 131.25 128.125V109.375C131.25 107.65 129.85 106.25 128.125 106.25C126.4 106.25 125 107.65 125 109.375V128.125C125 133.294 120.793 137.5 115.625 137.5H15.6249C10.4561 137.5 6.2499 133.294 6.2499 128.125V37.5H125V59.3751C125 61.1001 126.4 62.4999 128.125 62.4999ZM6.2499 31.2501V21.8751C6.2499 16.7062 10.4561 12.5001 15.6249 12.5001H115.625C120.794 12.5001 125 16.7062 125 21.8751V31.2501H6.2499Z" fill="white" />
                            <path d="M15.6246 25.0002C17.3506 25.0002 18.7497 23.601 18.7497 21.8751C18.7497 20.1492 17.3506 18.75 15.6246 18.75C13.8987 18.75 12.4995 20.1492 12.4995 21.8751C12.4995 23.601 13.8987 25.0002 15.6246 25.0002Z" fill="white" />
                            <path d="M28.1256 25.0002C29.8515 25.0002 31.2507 23.601 31.2507 21.8751C31.2507 20.1492 29.8515 18.75 28.1256 18.75C26.3996 18.75 25.0005 20.1492 25.0005 21.8751C25.0005 23.601 26.3996 25.0002 28.1256 25.0002Z" fill="white" />
                            <path d="M40.6251 25.0002C42.351 25.0002 43.7502 23.601 43.7502 21.8751C43.7502 20.1492 42.351 18.75 40.6251 18.75C38.8992 18.75 37.5 20.1492 37.5 21.8751C37.5 23.601 38.8992 25.0002 40.6251 25.0002Z" fill="white" />
                            <path d="M65.6248 68.7501C63.8998 68.7501 62.4997 70.1502 62.4997 71.8752V81.2502H49.9996V71.8752C49.9996 70.1502 48.5995 68.7501 46.8745 68.7501C45.1495 68.7501 43.7494 70.1502 43.7494 71.8752V96.8751C43.7494 98.6001 45.1495 100 46.8745 100C48.5995 100 49.9996 98.6001 49.9996 96.8751V87.5001H62.4997V96.8751C62.4997 98.6001 63.8998 100 65.6248 100C67.3498 100 68.7499 98.6001 68.7499 96.8751V71.8752C68.7499 70.1499 67.3498 68.7501 65.6248 68.7501Z" fill="white" />
                            <path d="M90.6252 68.7501H78.1251C76.4001 68.7501 75 70.1502 75 71.8752C75 73.6002 76.4004 75 78.1254 75H81.2505V96.8751C81.2505 98.6001 82.6506 100 84.3756 100C86.1006 100 87.5007 98.6001 87.5007 96.8751V75H90.6258C92.3508 75 93.7509 73.5999 93.7509 71.8749C93.7509 70.1499 92.3502 68.7501 90.6252 68.7501Z" fill="white" />
                            <path d="M123.069 68.9939C121.907 68.5003 120.563 68.7689 119.663 69.6689L112.501 76.8314L105.338 69.6628C104.444 68.7754 103.094 68.5064 101.932 68.9878C100.763 69.4691 100 70.6129 100 71.8753V96.8752C100 98.6002 101.401 100 103.126 100C104.851 100 106.251 98.6002 106.251 96.8752V79.4189L110.295 83.4563C111.513 84.6751 113.495 84.6751 114.713 83.4563L118.751 79.4189V96.8752C118.751 98.6002 120.151 100 121.876 100C123.601 100 125.001 98.6002 125.001 96.8816V71.8817C125.001 70.6187 124.238 69.475 123.069 68.9939Z" fill="white" />
                            <path d="M146.875 93.75H137.5V71.8749C137.5 70.1499 136.1 68.7498 134.375 68.7498C132.65 68.7498 131.25 70.1499 131.25 71.8749V96.8748C131.25 98.5998 132.65 99.9999 134.375 99.9999H146.875C148.6 99.9999 150 98.5998 150 96.8748C150 95.1498 148.6 93.75 146.875 93.75Z" fill="white" />
                        </g>
                        <defs>
                            <clipPath id="clip0_1708_317">
                                <rect width="150" height="150" fill="white" />
                            </clipPath>
                        </defs>
                    </svg>

                    <p class="cards-item__title cards-item__title--white">Начальный HTML</p>
                    <a href="{{ route('course') }}" class="cards-item__link cards-item__link--white">Подробнее</a>
                </li>

                <li class="cards__item cards__item--peach cards-item">
                    <svg width="150" height="150" viewBox="0 0 150 150" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M128.124 62.5002C129.849 62.5002 131.249 61.1001 131.249 59.3751V21.8755C131.249 13.2632 124.242 6.25073 115.624 6.25073H15.6248C7.00628 6.25073 0 13.2632 0 21.8755V128.125C0 136.737 7.00628 143.749 15.6248 143.749H115.624C124.242 143.749 131.248 136.737 131.248 128.125V109.375C131.248 107.65 129.848 106.25 128.123 106.25C126.398 106.25 124.998 107.65 124.998 109.375V128.125C124.998 133.293 120.792 137.499 115.623 137.499H15.6248C10.456 137.499 6.24984 133.293 6.24984 128.125V37.5005H124.999V59.3754C124.999 61.1001 126.399 62.5002 128.124 62.5002ZM6.24984 31.2504V21.8755C6.24984 16.7067 10.456 12.5006 15.6248 12.5006H115.624C120.792 12.5006 124.999 16.7067 124.999 21.8755V31.2504H6.24984Z" fill="black" />
                        <path d="M15.6246 25.0005C17.3505 25.0005 18.7496 23.6014 18.7496 21.8754C18.7496 20.1495 17.3505 18.7504 15.6246 18.7504C13.8987 18.7504 12.4995 20.1495 12.4995 21.8754C12.4995 23.6014 13.8987 25.0005 15.6246 25.0005Z" fill="black" />
                        <path d="M28.1246 25.0005C29.8505 25.0005 31.2496 23.6014 31.2496 21.8754C31.2496 20.1495 29.8505 18.7504 28.1246 18.7504C26.3987 18.7504 24.9995 20.1495 24.9995 21.8754C24.9995 23.6014 26.3987 25.0005 28.1246 25.0005Z" fill="black" />
                        <path d="M40.6246 25.0005C42.3505 25.0005 43.7496 23.6014 43.7496 21.8754C43.7496 20.1495 42.3505 18.7504 40.6246 18.7504C38.8987 18.7504 37.4995 20.1495 37.4995 21.8754C37.4995 23.6014 38.8987 25.0005 40.6246 25.0005Z" fill="black" />
                        <path d="M138.473 81.3687L137.548 81.2126C132.067 80.3187 131.248 78.8938 131.248 78.125C131.248 76.8814 133.742 74.9999 137.505 74.9999C141.204 74.9999 143.642 76.7563 143.761 78.0187C143.93 79.7436 145.523 81.0687 147.173 80.8311C148.886 80.6685 150.148 79.1436 149.986 77.4248C149.511 72.4749 144.148 68.7437 137.505 68.7437C130.492 68.7437 124.998 72.8625 124.998 78.1186C124.998 83.0123 128.88 86.1247 136.548 87.3748C141.742 88.2312 143.748 89.6875 143.748 90.625C143.748 91.8686 141.254 93.75 137.492 93.75C133.792 93.75 131.355 91.9876 131.236 90.7252C131.067 89.0063 129.536 87.7314 127.823 87.9127C126.111 88.0753 124.848 89.6002 125.011 91.319C125.486 96.269 130.848 100 137.492 100C144.504 100 149.998 95.8814 149.998 90.6253C149.998 85.7374 146.123 82.625 138.473 81.3687Z" fill="black" />
                        <path d="M107.217 81.3687L106.292 81.2126C100.811 80.3187 99.9924 78.8938 99.9924 78.125C99.9924 76.8814 102.486 74.9999 106.249 74.9999C109.949 74.9999 112.386 76.7624 112.505 78.0187C112.674 79.7436 114.249 81.0687 115.917 80.8311C117.63 80.6685 118.892 79.1436 118.73 77.4248C118.255 72.4749 112.893 68.7437 106.249 68.7437C99.2362 68.7437 93.7425 72.8625 93.7425 78.1186C93.7425 83.0123 97.6237 86.1247 105.292 87.3748C110.48 88.2312 112.492 89.6875 112.492 90.625C112.492 91.8686 109.999 93.75 106.236 93.75C102.536 93.75 100.099 91.9876 99.9798 90.7252C99.811 89.0063 98.2486 87.7314 96.5673 87.9127C94.8549 88.0753 93.5922 89.6002 93.7548 91.319C94.2297 96.269 99.5922 100 106.236 100C113.248 100 118.742 95.8814 118.742 90.6253C118.742 85.7374 114.867 82.625 107.217 81.3687Z" fill="black" />
                        <path d="M84.3742 87.4998C82.6492 87.4998 81.2492 88.8999 81.2492 90.6249C81.2492 92.3499 79.8429 93.7499 78.1241 93.7499H71.8742C70.1554 93.7499 68.7492 92.3499 68.7492 90.6249V78.1249C68.7492 76.3999 70.1554 74.9998 71.8742 74.9998H78.1241C79.8429 74.9998 81.2492 76.3999 81.2492 78.1249C81.2492 79.8499 82.6492 81.25 84.3742 81.25C86.0992 81.25 87.4993 79.8499 87.4993 78.1249C87.4993 72.9561 83.2932 68.75 78.1244 68.75H71.8745C66.7057 68.75 62.4996 72.9561 62.4996 78.1249V90.6249C62.4996 95.7937 66.7057 99.9998 71.8745 99.9998H78.1244C83.2932 99.9998 87.4993 95.7937 87.4993 90.6249C87.4993 88.8999 86.0992 87.4998 84.3742 87.4998Z" fill="black" />
                    </svg>

                    <p class="cards-item__title cards-item__title--black">Начальный CSS</p>
                    <a href="{{ route('course') }}" class="cards-item__link cards-item__link--black">Подробнее</a>
                </li>

                <li class="cards__item cards__item--green cards-item">
                    <svg width="150" height="150" viewBox="0 0 150 150" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <g clip-path="url(#clip0_1713_405)">
                            <path d="M128.435 62.4697C130.164 62.4697 131.568 61.0662 131.568 59.3371V21.7462C131.568 13.113 124.538 6.0835 115.905 6.0835H15.6627C7.02948 6.0835 0 13.113 0 21.7462V128.254C0 136.887 7.02948 143.916 15.6627 143.916H115.905C124.538 143.916 131.568 136.887 131.568 128.254V109.458C131.568 107.729 130.164 106.326 128.435 106.326C126.706 106.326 125.302 107.729 125.302 109.458V128.254C125.302 133.435 121.086 137.651 115.905 137.651H15.6627C10.4814 137.651 6.26504 133.435 6.26504 128.254V37.409H125.303V59.3371C125.303 61.0662 126.706 62.4697 128.435 62.4697ZM6.26504 31.1439V21.7462C6.26504 16.5649 10.4814 12.3485 15.6627 12.3485H115.905C121.086 12.3485 125.303 16.5649 125.303 21.7462V31.1439H6.26504Z" fill="black" />
                            <path d="M15.6629 24.879C17.3931 24.879 18.7956 23.4764 18.7956 21.7463C18.7956 20.0162 17.3931 18.6136 15.6629 18.6136C13.9328 18.6136 12.5303 20.0162 12.5303 21.7463C12.5303 23.4764 13.9328 24.879 15.6629 24.879Z" fill="black" />
                            <path d="M28.1931 24.879C29.9232 24.879 31.3258 23.4764 31.3258 21.7463C31.3258 20.0162 29.9232 18.6136 28.1931 18.6136C26.463 18.6136 25.0604 20.0162 25.0604 21.7463C25.0604 23.4764 26.463 24.879 28.1931 24.879Z" fill="black" />
                            <path d="M40.7235 24.879C42.4536 24.879 43.8562 23.4764 43.8562 21.7463C43.8562 20.0162 42.4536 18.6136 40.7235 18.6136C38.9934 18.6136 37.5908 20.0162 37.5908 21.7463C37.5908 23.4764 38.9934 24.879 40.7235 24.879Z" fill="black" />
                            <path d="M115.663 69C113.934 69 112.53 70.4035 112.53 72.1327V90.9281C112.53 92.6572 111.127 94.0607 109.398 94.0607C107.669 94.0607 106.265 92.6572 106.265 90.9281C106.265 89.1989 104.862 87.7954 103.133 87.7954C101.403 87.7954 100 89.1989 100 90.9281C100 96.1094 104.216 100.326 109.398 100.326C114.579 100.326 118.795 96.1094 118.795 90.9281V72.1327C118.796 70.4035 117.392 69 115.663 69Z" fill="black" />
                            <path d="M138.476 81.6251L137.552 81.4689C132.07 80.5751 131.252 79.1501 131.252 78.3814C131.252 77.1377 133.745 75.2563 137.508 75.2563C141.208 75.2563 143.645 77.0188 143.764 78.275C143.933 80 145.508 81.3251 147.177 81.0875C148.889 80.9249 150.152 79.4 149.989 77.6812C149.514 72.7312 144.152 69 137.508 69C130.495 69 125.002 73.1188 125.002 78.3749C125.002 83.2686 128.883 86.3811 136.552 87.6312L137.052 84.55L136.305 87.59C141.492 88.4464 143.752 89.9438 143.752 90.8813C143.752 92.125 141.258 94.0064 137.495 94.0064C133.795 94.0064 131.358 92.2439 131.239 90.9815C131.07 89.2627 129.508 87.9877 127.827 88.1691C126.114 88.3316 124.852 89.8565 125.014 91.5754C125.489 96.5253 130.851 100.257 137.495 100.257C144.508 100.257 150.001 96.1377 150.001 90.8816C150.001 85.9938 146.126 82.8813 138.476 81.6251Z" fill="black" />
                        </g>
                        <defs>
                            <clipPath id="clip0_1713_405">
                                <rect width="150" height="150" fill="white" />
                            </clipPath>
                        </defs>
                    </svg>

                    <p class="cards-item__title cards-item__title--black">Начальный JS</p>
                    <a href="{{ route('course') }}" class="cards-item__link cards-item__link--black">Подробнее</a>
                </li>

                <li class="cards__item cards__item--black cards-item">
                    <svg width="150" height="150" viewBox="0 0 150 150" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M82.0515 0C51.421 0 26.4532 24.7134 26.041 55.2482L11.9331 95.8174H26.0361V126.047H53.4035V150H117.723V99.2012C123.655 94.291 128.582 88.1395 132.051 81.2934C136.043 73.4125 138.068 64.9079 138.068 56.016C138.067 25.1286 112.939 0 82.0515 0ZM110.567 93.507L108.812 94.8444V141.089H62.3147V117.136H34.9473V86.9058H24.4669L34.9473 56.7681V56.0154C34.9473 30.0422 56.0783 8.91125 82.0515 8.91125C108.025 8.91125 129.156 30.0422 129.156 56.0157C129.156 70.8417 122.381 84.507 110.567 93.507Z" fill="white" />
                        <path d="M82.0515 24.1375C65.4106 24.1375 51.8716 37.6761 51.8716 54.3177C51.8716 62.2864 54.9489 69.8029 60.537 75.4824L60.9443 75.896C63.2233 78.3002 64.8 81.243 65.5366 84.4578V91.9979C65.5366 99.5627 71.691 105.717 79.2557 105.717H84.8476C92.4124 105.717 98.5668 99.5627 98.5668 91.9979V84.4578C99.3021 81.2477 100.876 78.3083 103.15 75.9063L103.567 75.4824C109.155 69.8026 112.232 62.2862 112.232 54.3177C112.232 37.6761 98.6928 24.1375 82.0515 24.1375ZM84.8476 96.8055H79.2557C76.6046 96.8055 74.4478 94.6487 74.4478 91.9976V88.424H89.6553V91.9976H89.6555C89.6555 94.6487 87.4987 96.8055 84.8476 96.8055ZM79.0644 54.3174C79.0644 52.6703 80.4044 51.33 82.0515 51.33C83.6986 51.33 85.0389 52.67 85.0389 54.3174C85.0389 55.9645 83.6986 57.3045 82.0515 57.3045C80.4044 57.3045 79.0644 55.9645 79.0644 54.3174ZM97.3416 69.1021L97.244 69.1994C94.302 72.1305 92.0889 75.6476 90.7316 79.5127H86.507V65.3474C90.8661 63.5799 93.9499 59.3034 93.9499 54.318C93.9499 47.7572 88.612 42.4193 82.0512 42.4193C75.4905 42.4193 70.1529 47.7569 70.1529 54.318C70.1529 59.3034 73.2364 63.5802 77.5955 65.3474V79.5127H73.3711C72.0144 75.6473 69.8007 72.1305 66.8587 69.1994L66.7644 69.1053C62.9054 65.1183 60.7825 59.8744 60.7825 54.318C60.7825 42.5904 70.3237 33.049 82.0512 33.049C93.7788 33.049 103.32 42.5901 103.32 54.318C103.321 59.8727 101.199 65.1151 97.3416 69.1021Z" fill="white" />
                    </svg>

                    <p class="cards-item__title cards-item__title--white">Другое</p>
                    <a href="" class="cards-item__link cards-item__link--white">Подробнее</a>
                </li>

            </ul>
        </section>
        <!-- CARDS END -->

        <!-- AUDIENCE -->
        <section class="audience container">
            <h2 class="audience__title">Для кого это подходит?</h2>
            <hr class="audience__border">
            <ul class="audience__list">
                <li class="audience__item audience-item">
                    <svg width="200" height="240" viewBox="0 0 200 240" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M2 76.9857C2 67.1503 7.16037 58.0362 15.5941 52.9759L85.5941 10.9759C94.4612 5.65564 105.539 5.65564 114.406 10.9759L184.406 52.9759C192.84 58.0362 198 67.1503 198 76.9857V163.014C198 172.85 192.84 181.964 184.406 187.024L114.406 229.024C105.539 234.344 94.4612 234.344 85.5941 229.024L15.5941 187.024C7.16036 181.964 2 172.85 2 163.014V76.9857Z" stroke="#EEA02B" stroke-width="4" />
                        <path d="M9.5238 81.8713C9.5238 71.3953 14.9886 61.678 23.9404 56.2362L84.4166 19.4731C93.9905 13.6532 106.01 13.6532 115.583 19.4731L176.06 56.2362C185.011 61.678 190.476 71.3953 190.476 81.8713V158.129C190.476 168.605 185.011 178.322 176.06 183.764L115.583 220.527C106.01 226.347 93.9904 226.347 84.4166 220.527L23.9404 183.764C14.9886 178.322 9.5238 168.605 9.5238 158.129V81.8713Z" fill="#FEC166" />
                        <path d="M100 129.015C100 117.679 106.389 107.312 116.515 102.216L175.981 72.2937C182.632 68.9472 190.476 73.7816 190.476 81.2265V158.129C190.476 168.605 185.011 178.322 176.06 183.764L115.194 220.763C108.53 224.814 100 220.017 100 212.218L100 175L100 129.015Z" fill="#FFD9A0" />
                        <path d="M9.5238 81.251C9.5238 73.8001 17.3796 68.9661 24.0308 72.3243L83.521 102.36C93.627 107.463 100 117.82 100 129.141V208.687C100 208.687 100.078 215.912 101.681 218.344C103.055 220.428 105.263 221.869 107.261 222.319C110.146 222.969 113.108 221.974 113.108 221.974C105.059 226.902 94.9309 226.918 86.8663 222.016L23.9404 183.764C14.9886 178.322 9.5238 168.605 9.5238 158.129V81.251Z" fill="#EEA02B" />
                    </svg>
                    <div class="audience-item__wrp">
                        <p class="audience-item__title">Новичкам в&nbsp;разработке</p>
                        <p class="audience-item__text">С&nbsp;нуля изучите основы программирования на&nbsp;JavaScript, PHP и&nbsp;др.</p>
                    </div>
                </li>
                <li class="audience__item audience-item">
                    <div class="audience-item__wrp">
                        <p class="audience-item__title">Начинающим разработчикам</p>
                        <p class="audience-item__text">Прокачаетесь в&nbsp;работе с&nbsp;самыми популярными языками программирования.</p>
                    </div>
                    <svg width="200" height="240" viewBox="0 0 200 240" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M2 68.4929C2 63.9264 4.39588 59.6949 8.31156 57.3454L93.3116 6.34544C97.4284 3.87532 102.572 3.87532 106.688 6.34545L191.688 57.3454C195.604 59.6949 198 63.9264 198 68.4929V171.507C198 176.074 195.604 180.305 191.688 182.655L106.688 233.655C102.572 236.125 97.4284 236.125 93.3116 233.655L8.31155 182.655C4.39588 180.305 2 176.074 2 171.507V68.4929Z" stroke="#1766F9" stroke-width="4" />
                        <path d="M9.52393 73.4357C9.52393 68.1976 12.2563 63.339 16.7322 60.6181L92.2084 14.7365C96.9953 11.8266 103.005 11.8266 107.792 14.7365L183.268 60.6181C187.744 63.339 190.476 68.1976 190.476 73.4357V166.564C190.476 171.802 187.744 176.661 183.268 179.382L107.792 225.263C103.005 228.173 96.9953 228.173 92.2084 225.263L16.7322 179.382C12.2563 176.661 9.52393 171.802 9.52393 166.564V73.4357Z" fill="#0AA4E7" />
                        <path d="M100 119.771C100 114.103 103.195 108.919 108.258 106.371L183.229 68.6468C186.554 66.9736 190.476 69.3908 190.476 73.1133V166.564C190.476 171.802 187.744 176.661 183.268 179.382L107.597 225.382C104.265 227.407 100 225.009 100 221.109L100 175L100 119.771Z" fill="#4EC1F3" />
                        <path d="M9.52393 73.1254C9.52393 69.4 13.4518 66.983 16.7774 68.662L91.7606 106.52C96.8136 109.072 100 114.25 100 119.91V208.687C100 208.687 100.078 215.912 101.681 218.344C103.055 220.428 105.263 221.869 107.261 222.319C110.146 222.969 113.108 221.974 113.108 221.974L107.805 225.221C103.012 228.156 96.982 228.165 92.1804 225.246L16.7322 179.382C12.2563 176.661 9.52393 171.802 9.52393 166.564V73.1254Z" fill="#1766F9" />
                    </svg>
                </li>
                <li class="audience__item audience-item">
                    <svg width="200" height="240" viewBox="0 0 200 240" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M2 68.4929C2 63.9264 4.39588 59.6949 8.31156 57.3454L93.3116 6.34544C97.4284 3.87532 102.572 3.87532 106.688 6.34545L191.688 57.3454C195.604 59.6949 198 63.9264 198 68.4929V171.507C198 176.074 195.604 180.305 191.688 182.655L106.688 233.655C102.572 236.125 97.4284 236.125 93.3116 233.655L8.31155 182.655C4.39588 180.305 2 176.074 2 171.507V68.4929Z" stroke="#5218FF" stroke-width="4" />
                        <path d="M9.52393 73.4357C9.52393 68.1976 12.2563 63.339 16.7322 60.6181L92.2084 14.7365C96.9953 11.8266 103.005 11.8266 107.792 14.7365L183.268 60.6181C187.744 63.339 190.476 68.1976 190.476 73.4357V166.564C190.476 171.802 187.744 176.661 183.268 179.382L107.792 225.263C103.005 228.173 96.9953 228.173 92.2084 225.263L16.7322 179.382C12.2563 176.661 9.52393 171.802 9.52393 166.564V73.4357Z" fill="#7366FE" />
                        <path d="M100 119.771C100 114.103 103.195 108.919 108.258 106.371L183.229 68.6468C186.554 66.9736 190.476 69.3908 190.476 73.1133V166.564C190.476 171.802 187.744 176.661 183.268 179.382L107.597 225.382C104.265 227.407 100 225.009 100 221.109L100 175L100 119.771Z" fill="#A19AFE" />
                        <path d="M9.52393 73.1254C9.52393 69.4 13.4518 66.983 16.7774 68.662L91.7606 106.52C96.8136 109.072 100 114.25 100 119.91V208.687C100 208.687 100.078 215.912 101.681 218.344C103.055 220.428 105.263 221.869 107.261 222.319C110.146 222.969 113.108 221.974 113.108 221.974L107.805 225.221C103.012 228.156 96.982 228.165 92.1804 225.246L16.7322 179.382C12.2563 176.661 9.52393 171.802 9.52393 166.564V73.1254Z" fill="#5218FF" />
                    </svg>
                    <div class="audience-item__wrp">
                        <p class="audience-item__title">IT-специалистам</p>
                        <p class="audience-item__text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do&nbsp;eiusmod tempor incididunt.</p>
                    </div>
                </li>
            </ul>
        </section>
        <!-- AUDIENCE END -->

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
    </main>

    <!-- FOOTER -->
    <footer class="footer">
        <div class="footer__wrp container">
            <a class="footer__logo" href="index.blade.php">
                IT<span class="header__logo--plus">+</span>PLUS
            </a>
            <nav class="footer__nav">
                <ul class="footer__nav-list footer-nav-list">

                    <li class="footer__nav-item footer-nav-item">
                        <a href="#" class="footer-nav-item__link">Курсы</a>
                    </li>

                    <li class="footer__nav-item footer-nav-item">
                        <a href="#" class="footer-nav-item__link">Программы</a>
                    </li>

                    <li class="footer__nav-item footer-nav-item">
                        <a href="#" class="footer-nav-item__link">О нас</a>
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

    <script src="js/modal.js"></script>
    <script src="js/accordion.js"></script>
</body>

</html>
