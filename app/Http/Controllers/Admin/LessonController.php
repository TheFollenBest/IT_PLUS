<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
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
        $lessons = Lesson::get();
        return view('admin.lessons.create', [
            'lessons' => $lessons,
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
        $new_lesson = new Lesson();
        $new_lesson -> name = $request->input('name');
        $new_lesson -> text = $request->input('text');
        $new_lesson -> code = $request->input('code');
        $new_lesson -> manual = $request->input('manual');
        $new_lesson -> id_course = $request->selection_course;
        $new_lesson -> save();

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
        $courses = Course::get();
        return view('admin.lessons.edit', [
            'lesson' => $lesson,
            'courses' => $courses
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Lesson  $lesson
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Lesson $lesson)
    {
        $lesson -> name = $request->name;
        $lesson -> text = $request->text;
        $lesson -> code = $request->code;
        $lesson -> manual = $request->manual;
        $lesson -> id_course = $request->selection_course;
        $lesson -> save();

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
