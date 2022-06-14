<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Lesson;
use App\Models\Course;
use App\Models\User_lessons;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class CourseLessonController1 extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($course)
    {
//        $courseLesson = CourseLesson::get();
//        return view('user.lessons.index');

//        $courseLesson = Lesson::orderBy('id')->get();
        $courseLesson = Lesson::where('id_course', $course)->orderBy('id')->get();
//        echo $course;
        return view('user.lessons.index', compact('courseLesson', 'course'));
//        return view('user.lessons.index', ['lessons' => $lesson]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Lesson  $lesson
     * @return \Illuminate\Http\Response
     */
    public function show(Lesson $lesson)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Lesson  $lesson
     * @return \Illuminate\Http\Response
     */
    public function edit(Lesson $lesson, $courseLesson, $course)
    {
        $lesson = Lesson::where('id_course', $courseLesson)->where('id', $course)->orderBy('id')->get();
        return view('user.lessons.edit', compact('course', 'courseLesson'), ['lesson' => $lesson]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Lesson  $lesson
     * @param  \App\Models\User_lessons  $user_lesson
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User_lessons $user_lesson, Lesson $lesson, $courseLesson)
    {
//        $params = $request->all();
//        $lesson->update($params);

//        $user_lesson_count = User_lessons::where('id_lesson', $courseLesson->id)->where('id_user', Auth::user()->id)->count();

//        if ($user_lesson_count == 0){
//            $user_lesson = new User_lessons();
//            $user_lesson -> user_answer = $request->input('code');
//            $user_lesson -> id_user = Auth::user()->id;
//            $user_lesson -> id_lesson = $courseLesson->id;
//
//
//            $user_lesson -> save();
//
//            return redirect()->back()->withSuccess('Изменение прошло успешно!');

//        }
//        else{
//            $user_lesson -> user_answer = $request->code;
//            $user_lesson -> id_user = Auth::user()->id;
//            $user_lesson -> id_lesson = $courseLesson->id;
//
//            $user_lesson -> save();
//
//            return redirect()->back()->withSuccess('Изменение прошло успешно!');
//        }

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Lesson  $lesson
     * @return \Illuminate\Http\Response
     */
    public function destroy(Lesson $lesson)
    {
        //
    }
}
