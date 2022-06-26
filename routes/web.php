<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('index');
})->name('index');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

//Route::resource('user_courses', App\Http\Controllers\User\CourseController::class);

//Route::get('/courses', [App\Http\Controllers\User\CourseController::class, 'index'])->name('user_courses.index');
//
//Route::get('/courses/{id}', [App\Http\Controllers\User\CourseController::class, 'show'])->name('user_courses.show');

//Route::get('/courses/{id}/lessons/{id_lesson}', [App\Http\Controllers\User\LessonController::class, 'show'])->name('user_lessons.show');

Route::get('/', [App\Http\Controllers\User\HomeController::class, 'index'])->name('index');

Route::get('/about', function () {
    return view('about');
})->name('about');

Route::middleware(['role:admin'])->prefix('admin_panel')->group(function () {
    Route::get('/', [App\Http\Controllers\Admin\HomeController::class, 'index'])->name('homeAdmin');
    Route::resource('courses', App\Http\Controllers\Admin\CourseController::class);
    Route::resource('lessons', App\Http\Controllers\Admin\LessonController::class);
    Route::resource('users', App\Http\Controllers\Admin\UserController::class);
    Route::resource('questions', App\Http\Controllers\Admin\QuestionController::class);
});

Route::middleware(['role:user|admin'])->group(function () {

    Route::resource('user_courses', App\Http\Controllers\User\CourseController::class);
    Route::resource('user_lessons', App\Http\Controllers\User\LessonController::class);
    Route::resource('user_courses/{user_course}/user_lessons', App\Http\Controllers\User\CourseLessonController::class);
    Route::resource('profile', App\Http\Controllers\User\ProfileController::class);

//    Route::get('/courses/{course}/lessons', [App\Http\Controllers\User\CourseLessonController::class, 'index'])->name('user_lessons.index');
//    Route::get('/courses/{course}/lessons/{lesson}', [App\Http\Controllers\User\CourseLessonController::class, 'index'])->name('user_lessons.index');

//    Route::resource('courses.lessons', App\Http\Controllers\User\CourseLessonController::class);

//    Route::redirect('/courses/{id}', '/lessons');

});
