<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--=============== BOXICONS ===============-->
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>

    <!--=============== CSS ===============-->
    <link rel="stylesheet" href="/css/styles.css">

    <title>Error 404</title>
</head>
<body>
<!--==================== HEADER ====================-->
<header class="header">
    <nav class="nav container">
        <a class="header__logo" href="{{route ('index')}}">
            IT<span class="header__logo--plus">+</span>PLUS
        </a>

        <div class="nav__menu" id="nav-menu">
            <ul class="nav__list">
                <li class="nav__item">
                    <a href="#" class="nav__link">Курсы</a>
                </li>
                <li class="nav__item">
                    <a href="#" class="nav__link">Программы</a>
                </li>
                <li class="nav__item">
                    <a href="#" class="nav__link">О нас</a>
                </li>
            </ul>

            <div class="nav__close" id="nav-close">
                <i class='bx bx-x'></i>
            </div>
        </div>

        <!-- Toggle button -->
        <div class="nav__toggle" id="nav-toggle">
            <i class='bx bx-grid-alt'></i>
        </div>
    </nav>
</header>

<!--==================== MAIN ====================-->
<main class="main">
    <!--==================== HOME ====================-->
    <section class="home">
        <div class="home__container container">
            <div class="home__data">
                <span class="home__subtitle">Error 404</span>
                <h1 class="home__title">Ой, что-то сломалось</h1>
                <p class="home__description">
                    Похоже, вы пытаетесь зайти <br> на несуществующую страницу.
                </p>
                <a href="{{ route('index') }}" class="home__button">
                    На главную
                </a>
            </div>

            <div class="home__img">
                <img src="/img/ghost-img.png" alt="">
                <div class="home__shadow"></div>
            </div>
        </div>

        <footer class="home__footer">
            <span>(123) 456-789</span>
            <span>|</span>
            <span>info@itplus.com</span>
        </footer>
    </section>
</main>

<!--=============== SCROLLREVEAL ===============-->
<script src="/js/scrollreveal.min.js"></script>

<!--=============== MAIN JS ===============-->
<script src="/js/main.js"></script>
</body>
</html>
