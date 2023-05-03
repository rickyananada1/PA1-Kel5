<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHomeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('home', function (Blueprint $table) {
            $table->id();
            $table->string('image_path');
            $table->string('title');
            $table->text('description');
            $table->timestamps();
        });

        DB::table('home')->insert(
            array(
                array(
                    'image_path' => 'assets/img/slide/slide-1.png',
                    'title' => 'Welcome to Website Siantar Zoo',
                    'description' => 'Jalan Gunung Simanuk-Manuk Kota Pematang Siantar, Provinsi Sumatera Utara, Indonesia.',
                        'created_at' => now(),
                        'updated_at' => now(),
                ),
                array(
                    'image_path' => 'assets/img/slide-2.png',
                    'title' => 'Siantar Zoo',
                    'description' => 'Selamat datang di Website Siantar Zoo, sebuah taman 4.5 hektar dan berpenghuni lebih dari 705 ekor satwa.',
                    'created_at' => now(),
                    'updated_at' => now(),
                ),
                array(
                    'image_path' => 'assets/img/slide/slide-3.png',
                    'title' => 'Lingkungan yang sangat asri',
                    'description' => 'Ratusan jenis tanaman ada disini',
                    'created_at' => now(),
                    'updated_at' => now(),
                )
            )
        );
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('home');
    }
}
