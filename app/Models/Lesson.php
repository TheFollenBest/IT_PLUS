<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Lesson extends Model
{
    use HasFactory;

    public function courses(){
        return $this-> belongsTo(Course::class, 'id_course');
    }

    public function user(){
        return $this-> belongsToMany(User::class, 'user_lessons', 'id_lesson', 'id_user')->withPivot('user_answer', 'id_status');
    }

    public function answer(){
        return $this-> belongsTo(Answer::class, 'id_answer');
    }
}
