<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Course;
use App\Models\Course_questions;
use App\Models\Question;
use Illuminate\Http\Request;

class QuestionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $questions = Question::orderBy('id')->paginate(10);
        $courses = Course::orderBy('id')->paginate(10);

        $row = 3;

        return view('admin.questions.index', [
            'questions' => $questions,
            'courses' => $courses,
            'row' => $row
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $questions = Question::get();
        $courses = Course::get();
        return view('admin.questions.create', [
            'questions' => $questions,
            'courses' => $courses
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
        $new_question = new Question();
        $new_question -> name = $request->input('name');
        $new_question -> text = $request->input('text');
        $new_question -> save();

        $last_question = $new_question -> id;

        $new_course_question = new Course_questions();
        $new_course_question -> id_course = $request->selection_course;
        $new_course_question -> id_question = $last_question;
        $new_course_question -> save();

        return redirect()->back()->withSuccess('Добавление прошло успешно!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function show(Question $question)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function edit(Question $question)
    {
        $courses = Course::get();
        return view('admin.questions.edit', [
            'question' => $question,
            'courses' => $courses
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Question $question, Course_questions $course_question)
    {
        $question -> name = $request->name;
        $question -> text = $request->text;
        $question -> save();

        $last_question = $question -> id;

        $question->courses()->detach();

        $course_question -> id_course = $request->selection_course;
        $course_question -> id_question = $last_question;
        $course_question -> save();

        return redirect()->back()->withSuccess('Изменение прошло успешно!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function destroy(Question $question)
    {
        $question ->delete();
        return redirect()->back()->withSuccess('Удаление прошло успешно!');
    }
}
