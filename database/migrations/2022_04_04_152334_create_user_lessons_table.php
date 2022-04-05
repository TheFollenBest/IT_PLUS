<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_lessons', function (Blueprint $table) {
            $table->id();
            $table->foreignId('id_lesson')->constrained('lessons')->cascadeOnUpdate();
            $table->foreignId('id_user')->constrained('users')->cascadeOnUpdate();
            $table->foreignId('id_status')->constrained('statuses')->cascadeOnUpdate();
            $table->text('user_response');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('user_lessons');
    }
};
