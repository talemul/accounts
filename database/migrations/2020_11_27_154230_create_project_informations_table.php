<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProjectInformationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('project_informations', function (Blueprint $table) {
            $table->increments('id');
            $table->string('description')->nullable();
            $table->string('projecr_address')->nullable();
            $table->string('address2')->nullable();
            $table->string('level')->nullable();
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
        Schema::dropIfExists('project_informations');
    }
}
