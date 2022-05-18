<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Course;
use App\Models\Lesson;
use App\Models\User;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(){
        $users_count = User::all()->count();
        $courses_count = Course::all()->count();
        $lessons_count = Lesson::all()->count();

        return view('admin.home.index', ['users_count' => $users_count, 'courses_count' => $courses_count, 'lessons_count' => $lessons_count]);
    }

}
