<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateChartofaccountsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('chartofaccounts', function (Blueprint $table) {
            $table->increments('id');
            $table->string('code')->default('000')->nullable();
            $table->string('code_desc')->nullable();
            $table->string('other_desc')->nullable();
            $table->string('code_tech_desc')->nullable();
            $table->string('code_level')->nullable();
            $table->string('p_code')->nullable();
            $table->string('b_code')->nullable();
            $table->string('acc_level')->nullable();
            $table->string('g_code')->nullable();
            $table->string('created_by')->nullable();
            $table->string('updated_by')->nullable();
            $table->string('p_id')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('chartofaccounts');
    }
}
