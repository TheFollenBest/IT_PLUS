<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Answer;
use App\Models\Course;
use App\Models\Lesson;
use Illuminate\Http\Request;

class LessonController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lessons = Lesson::orderBy('id')->paginate(10);


        return view('admin.lessons.index', [
            'lessons' => $lessons
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $courses = Course::get();
        $answers = Answer::get();
        $lessons = Lesson::get();
        return view('admin.lessons.create', [
            'lessons' => $lessons,
            'courses' => $courses,
            'answers' => $answers
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $new_lesson = new Lesson();
        $new_lesson -> name = $request->input('name');
        $new_lesson -> text = $request->input('text');
        $new_lesson -> code_html = $request->input('code_html');
        $new_lesson -> code_css = $request->input('code_css');
        $new_lesson -> code_js = $request->input('code_js');
        $new_lesson -> code_other = $request->input('code_other');
        $new_lesson -> manual = $request->input('manual');
        $new_lesson -> id_course = $request->selection_course;
        $new_lesson -> save();

        $last_lesson = $new_lesson -> id;

        $new_answer_lesson = new Answer();
        $new_answer_lesson -> answer_code_html = $request->input('answer_code_html');
        $new_answer_lesson -> answer_code_css = $request->input('answer_code_css');
        $new_answer_lesson -> answer_code_js = $request->input('answer_code_js');
        $new_answer_lesson -> answer_code_other = $request->input('answer_code_other');
        $new_answer_lesson -> id_lesson = $last_lesson;
        $new_answer_lesson -> save();

        return redirect()->back()->withSuccess('Добавление прошло успешно!');
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
    public function edit(Lesson $lesson)
    {
        $answers = Answer::get();
        $courses = Course::get();
        return view('admin.lessons.edit', [
            'lesson' => $lesson,
            'courses' => $courses,
            'answers' => $answers
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Lesson  $lesson
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Lesson $lesson, Answer $answer)
    {


        $lesson -> name = $request->name;
        $lesson -> text = $request->text;
        $lesson -> code_html = $request->code_html;
        $lesson -> code_css = $request->code_css;
        $lesson -> code_js = $request->code_js;
        $lesson -> code_other = $request->code_other;
        $lesson -> manual = $request->manual;
        $lesson -> id_course = $request->selection_course;
        $lesson -> save();

        $last_lesson = $lesson -> id;

        $userAnswer = Answer::where('id_lesson', $last_lesson)->orderBy('created_at', 'desc')->take(1)->delete();

        $answer->answer_code_html = $request->answer_code_html;
        $answer->answer_code_css = $request->answer_code_css;
        $answer->answer_code_js = $request->answer_code_js;
        $answer->answer_code_other = $request->answer_code_other;
        $answer -> id_lesson = $last_lesson;
        $answer -> save();

        return redirect()->back()->withSuccess('Изменение прошло успешно!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Lesson  $lesson
     * @return \Illuminate\Http\Response
     */
    public function destroy(Lesson $lesson)
    {
        $lesson ->delete();
        return redirect()->back()->withSuccess('Удаление прошло успешно!');
    }
}
