<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFilterMobilesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('filter_mobiles', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('mobile_id');
            $table->unsignedBigInteger('attribute_id');
            $table->timestamps();

            $table->foreign('mobile_id')
                  ->references('id')
                  ->on('mobiles')
                  ->onDelete('cascade');

            $table->foreign('attribute_id')
                  ->references('id')
                  ->on('filter_attributes')
                  ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('filter_mobiles');
    }
}
