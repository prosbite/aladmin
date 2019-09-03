<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('posts', function (Blueprint $table) {
            $table->bigIncrements('post_id');
            $table->string('post_type');
            $table->text('post_content');
            $table->integer('employee_quantity');
            $table->integer('employee_hired');
            $table->string('position');
            $table->string('salary');
            $table->dateTime('duration_from');
            $table->dateTime('duration_to');
            $table->string('img');
            $table->integer('ssi_id');
            $table->integer('company_id');
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
        Schema::dropIfExists('posts');
    }
}
