<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Курс-HTML</title>
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
            <a href="#" class="header__login">Войти</a>
        </div>
    </header>
    <!-- HEADER END -->

    <!-- PREVIEW -->
    <section class="preview-course container">
        <p class="preview-course__subtitle">Бесплатно</p>
        <div class="preview-course__wrp">
            <div class="preview-course__wrp-inner">
                <h2 class="preview-course__title">Начальный курс по HTML</h2>
                <p class="preview-course__text">Вы с нуля научитесь создавать полноценные сайты и веб-приложения. Освоите HTML, CSS, JavaScript и PHP, познакомитесь с фреймворками и станете востребованным веб-разработчиком. Даже если до этого не программировали.</p>
                <a href="lesson_html.blade.php" class="preview-course__btn">Начать учиться</a>
            </div>
            <img class="preview-course__img" src="img/html-course.png" alt="html-course">
        </div>
    </section>
    <!-- PREVIEW END -->

    <!-- EDUCATION -->
    <section class="education container">
        <div class="education-wrp-top">
            <h2 class="education__title">Зачем нужен HTML?</h2>
            <p class="education__text"><span class="education__text--bold">HTML</span> (от английского <span class="education__text--bold">HyperText Markup Language</span>) — это язык гипертекстовой разметки страницы. Он используется для того, чтобы дать браузеру понять, как нужно отображать загруженный сайт.</p>
        </div>

        <div class="education-wrp-bottom">
            <h2 class="education__title">Возможности HTML</h2>
            <p class="education__text"><span class="education__text--bold">Язык состоит из тегов</span> — это своеобразные команды, которые преобразовываются в визуальные объекты в браузере пользователя. Например, тег &lt;img&gt; используется для размещения изображений на странице. У него есть обязательный атрибут src, в котором указывается ссылка на файл.</p>
        </div>
    </section>
    <!-- EDUCATION END -->

    <!-- LEARN -->
    <section class="learn container">
        <h2 class="learn__title">Что вы узнаете:</h2>
        <ul class="learn__list">
            <li class="learn__item learn-item">
                <p class="learn-item__text">Структура HTML-документа</p>
            </li>
            <li class="learn__item learn-item">
                <p class="learn-item__text">Теги HTML</p>
            </li>
            <li class="learn__item learn-item">
                <p class="learn-item__text">Заголовки</p>
            </li>
            <li class="learn__item learn-item">
                <p class="learn-item__text">Абзац</p>
            </li>
            <li class="learn__item learn-item">
                <p class="learn-item__text">Ссылки</p>
            </li>
            <li class="learn__item learn-item">
                <p class="learn-item__text">Наследование</p>
            </li>
        </ul>
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

    <!-- FOOTER -->
    <footer class="footer">
        <div class="footer__wrp container">
            <a class="footer__logo" href="../index.blade.php">
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
    <script src="js/accordion.js"></script>
</body>

</html>
