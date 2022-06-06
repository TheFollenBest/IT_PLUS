<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Course;
use Illuminate\Http\Request;

class CourseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $courses = Course::orderBy('id')->paginate(10);

        return view('admin.courses.index', [
            'courses' => $courses
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $course = Course::get();
        return view('admin.courses.create', [
            'course' => $course]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $new_course = new Course();
        $new_course -> name = $request->input('name');
        $new_course -> description = $request->input('description');
        $new_course -> img = $request->input('img');
        $new_course -> subtitle = $request->input('subtitle');
        $new_course -> subtitle_text = $request->input('subtitle_text');
        $new_course -> content = $request->input('content');
        $new_course -> card_color = $request->input('card_color');
        $new_course -> font_color = $request->input('font_color');
        $new_course -> card_img = $request->input('card_img');
        $new_course -> save();

        return redirect()->back()->withSuccess('Добавление прошло успешно!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Course  $course
     * @return \Illuminate\Http\Response
     */
    public function show(Course $course)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Course  $course
     * @return \Illuminate\Http\Response
     */
    public function edit(Course $course)
    {
        return view('admin.courses.edit', [
            'course' => $course,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Course  $course
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Course $course)
    {
        $course -> name = $request->name;
        $course -> description = $request->description;
        $course -> img = $request->img;
        $course -> subtitle = $request->subtitle;
        $course -> subtitle_text = $request->subtitle_text;
        $course -> content = $request->content_course;
        $course -> card_color = $request->card_color;
        $course -> font_color = $request->font_color;
        $course -> card_img = $request->card_img;
        $course -> save();

        return redirect()->back()->withSuccess('Изменение прошло успешно!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Course  $course
     * @return \Illuminate\Http\Response
     */
    public function destroy(Course $course)
    {
        $course ->delete();
        return redirect()->back()->withSuccess('Удаление прошло успешно!');
    }

    public function block(Course $course){
        if ($course->is_hidden(false))
        {
            $course->is_hidden(true);
        }
        else
        {
            $course->is_hidden(false);
        }
        $course -> save();
        return redirect()->back();
    }
}
