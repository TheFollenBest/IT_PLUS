<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    use HasFactory;

    public function question(){
        return $this-> belongsToMany(Question::class, 'course_questions', 'id_course', 'id_question');
    }

    public function lesson(){
        return $this-> belongsTo(Lesson::class, 'id_course');
    }
}
