<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class User_lessons extends Model
{
    use HasFactory;

    public function lessons(){
        return $this-> hasMany(Lessons::class, 'id_lesson');
    }
}
