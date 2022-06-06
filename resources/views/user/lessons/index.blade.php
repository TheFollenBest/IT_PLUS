@extends('layouts.user_layout')

@section('title')
    Все уроки
@endsection

{{--@push('style')--}}
{{--    <link rel="stylesheet" href="https://pyscript.net/alpha/pyscript.css" />--}}
{{--    <script defer src="https://pyscript.net/alpha/pyscript.js"></script>--}}
{{--@endpush--}}

@section('content')

    <section class="cards container" style="padding-bottom: 100px">
        <h2 class="cards__title">Все уроки этого курса</h2>
        <hr class="cards__border">
        <ul class="cards__list">
            @foreach($courseLesson as $lesson)
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
                    <p class="cards-item__title cards-item__title--white">{{ $lesson->name }}</p>
{{--                    <a href="{{ route('user_lessons.show', $lesson['id']) }}" class="cards-item__link cards-item__link--white">Подробнее</a>--}}
                </li>
            @endforeach
        </ul>
    </section>

@endsection
