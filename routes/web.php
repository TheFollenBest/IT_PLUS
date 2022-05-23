<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('index');
})->name('index');

//Route::get('/course', function () {
//    return view('user/course');
//})->name('course');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::get('/courses/{id}', [App\Http\Controllers\User\CourseController::class, 'show'])->name('courses.show');
//Route::get('/courses/{id?}?id_lesson=1', function ($id = null, $id_lesson = null) {
//
////    print_r($_GET);
////    return([$_GET['id_lesson']]);
//    return view('user.lessons.lesson');
//})->name('lesson2');

Route::get('/', [App\Http\Controllers\User\CourseController::class, 'index'])->name('index');


Route::middleware(['role:admin'])->prefix('admin_panel')->group(function () {
    Route::get('/', [App\Http\Controllers\Admin\HomeController::class, 'index'])->name('homeAdmin');
    Route::resource('courses', App\Http\Controllers\Admin\CourseController::class);
    Route::resource('lessons', App\Http\Controllers\Admin\LessonController::class);
    Route::resource('users', App\Http\Controllers\Admin\UserController::class);
});

Route::middleware(['role:user|admin'])->group(function () {
//    Route::get('/lesson', function () {
//        return view('user.lessons.lesson');
//    })->name('lesson');

    Route::resource('lesson', App\Http\Controllers\User\LessonController::class);

//    Route::resource('courses', App\Http\Controllers\User\CourseController::class);
});
