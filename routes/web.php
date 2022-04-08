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

Route::middleware(['role:admin'])->prefix('admin_panel')->group(function () {
    Route::get('/', [App\Http\Controllers\Admin\HomeController::class, 'index'])->name('homeAdmin');
    Route::resource('courses', App\Http\Controllers\Admin\CourseController::class);
    Route::resource('lessons', App\Http\Controllers\Admin\LessonController::class);
    Route::resource('users', App\Http\Controllers\Admin\UserController::class);
});
