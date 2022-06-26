<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Answer;
use App\Models\Lesson;
use App\Models\User_lessons;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CourseLessonController extends Controller
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
     * @param  \App\Models\User_lessons  $user_lessons
     * @return \Illuminate\Http\Response
     */
    public function show(User_lessons $user_lessons)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\User_lessons  $user_lessons
     * @return \Illuminate\Http\Response
     */
    public function edit(User_lessons $user_lessons, $courseLesson, $course)
    {
        $userAnswer = User_lessons::where('id_lesson', $course)->where('id_user', Auth::user()->id)->orderBy('created_at', 'desc')->take(1)->get(); // Вывод ответа пользователя
        $countUserAnswer = User_lessons::where('id_lesson', $course)->where('id_user', Auth::user()->id)->orderBy('created_at', 'desc')->count(); // Счетчик кол-ва ответов на урок
        $lesson = Lesson::where('id_course', $courseLesson)->where('id', $course)->orderBy('id')->get(); // Вывод урока

        return view('user.lessons.edit', compact('course', 'courseLesson'), ['lesson' => $lesson, 'userAnswer' => $userAnswer, 'countUserAnswer' => $countUserAnswer]);

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\User_lessons  $user_lessons
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User_lessons $user_lessons, $course,  $courseLesson)
    {

        $countUserAnswer = User_lessons::where('id_lesson', $courseLesson)->where('id_user', Auth::user()->id)->count(); // Счетчик кол-ва ответов на урок
        $answers = Answer::where('id_lesson', $courseLesson)->get(); // Вывод ответа на урок

        if ($countUserAnswer != 0) { // Есть ли ответ у пользователя (если есть)

            $userAnswer = User_lessons::where('id_lesson', $courseLesson)->where('id_user', Auth::user()->id)->orderBy('created_at', 'desc')->take(1)->delete(); // Удаление предыдущего ответа
        }

        $user_lessons -> user_answer_html = $request->input('editor_html');
        $user_lessons -> user_answer_css = $request->input('editor_css');
        $user_lessons -> user_answer_js = $request->input('editor_js');
        $user_lessons -> id_user = Auth::user()->id;
        $user_lessons -> id_lesson = $courseLesson;

        $user_lessons -> save();

        $successAnswer = 0; // Критерий

        foreach ( $answers as $answer){
            $test = array("/\s+/");
            $trimmedUserAnswerHtml = preg_replace($test, "",$user_lessons -> user_answer_html);
            $trimmedUserAnswerCss = preg_replace($test, "",$user_lessons -> user_answer_css);
            $trimmedUserAnswerJs = preg_replace($test, "",$user_lessons -> user_answer_js);
            $trimmedLessonAnswerHtml = preg_replace($test, "",$answer->answer_code_html);
            $trimmedLessonAnswerCss = preg_replace($test, "",$answer->answer_code_css);
            $trimmedLessonAnswerJs = preg_replace($test, "",$answer->answer_code_js);

            if ($trimmedUserAnswerHtml === $trimmedLessonAnswerHtml && $trimmedUserAnswerCss === $trimmedLessonAnswerCss && $trimmedUserAnswerJs === $trimmedLessonAnswerJs) {
                $successAnswer = $successAnswer + 1;
            } // Сравнение отформатированных данных
        }

        if ($successAnswer === 0) { // Если непавильно
            $user_lessons -> id_status = 1;
            $user_lessons -> save();
            return redirect()->back()->withSuccess('Попробуй еще раз :)');
        }
        else { // Если правильно
            $user_lessons -> id_status = 2;
            $user_lessons -> save();
            return redirect()->back()->withSuccess('Молодец, все правильно!');
        }


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\User_lessons  $user_lessons
     * @return \Illuminate\Http\Response
     */
    public function destroy(User_lessons $user_lessons)
    {
        //
    }
}
