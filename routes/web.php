<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('index');
})->name('index');

Route::get('/html-course', function () {
    return view('user/course_html');
})->name('html-course');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::group(['middleware' => ['role:admin']], function () {
    Route::get('/js-course', function () {
        return view('user/course_js');
    })->name('js-course');
});
