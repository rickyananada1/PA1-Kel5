<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAboutTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('about', function (Blueprint $table) {
            $table->id();
            $table->text('description');
            $table->timestamps();
        });

        DB::table('about')->insert([
            'description' => 'Siantar Zoo merupakan sebuah kebun binatang yang memiliki luas sekitar 4.5 hektar dan terletak di Jalan Gunung Simanuk-Manuk Kota Pematangsiantar, Provinsi Sumatera Utara. Siantar Zoo menampung berbagai jenis hewan, seperti gajah, harimau, singa, beruang, monyet, dan lain sebagainya. Siantar Zoo menawarkan layanan kunjungan wisatawan yang ingin melihat berbagai jenis hewan di kebun binatang tersebut. Selain itu, Siantar Zoo juga memiliki fasilitas seperti area bermain anak, area parkir, dan restoran untuk memenuhi kebutuhan wisatawan selama berkunjung. Kami memiliki banyak fasilitas seperti area bermain anak, area parkir, dan restoran untuk memenuhi kebutuhan wisatawan selama berkunjung. Kami memiliki banyak fasilitas yang akan membuat kunjungan anda menjadi pengalaman yang tak terlupakan . Kami berusaha memberikan pengalaman berkunjung yang terbaik dan berkomitmen untuk menjaga kesejahteraan hewan-hewan kami dengan memberikan perawatan yang'
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('about');
    }
}
