/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.13-MariaDB : Database - db_siantarzoo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_siantarzoo` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_siantarzoo`;

/*Table structure for table `aboutus` */

DROP TABLE IF EXISTS `aboutus`;

CREATE TABLE `aboutus` (
  `id_aboutus` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`id_aboutus`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `aboutus` */

insert  into `aboutus`(`id_aboutus`,`deskripsi`) values 
(1,'Selamat Datang di Website Informasi Siantar Zoo!\r\n\r\nKami adalah tim pengembang yang berdedikasi menyediakan solusi teknologi yang kreatif yang menghadirkan kesan luar biasa bagi pengguna.\r\nKami percaya bahwa desain dan pengalaman pengguna merupakan kunci dalam membangun website yang memuaskan.\r\nKami telah bekerja dengan maksimal dan kami percaya bahwa dengan berfokus pada inovasi kualitas, dan kepuasan anda, kami dapat mencapai tujuan ini.\r\nTerima kasih telah mengunjungi website kami. Jangan ragu untuk menghubungi kami jika anda membutuhkan bantuan dalam pengembangan website.\r\n\r\nSalam hangat,\r\n\r\nTim pengembang');

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `admin` */

insert  into `admin`(`id`,`username`,`password`) values 
(1,'admin','$2y$10$lOXwGxyfxEfxGxDszDNp8uyZE/ZN9GPCJTfTpDmdE84ziMgZaUvVC');

/*Table structure for table `event` */

DROP TABLE IF EXISTS `event`;

CREATE TABLE `event` (
  `id_event` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(250) NOT NULL,
  PRIMARY KEY (`id_event`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `event` */

insert  into `event`(`id_event`,`deskripsi`) values 
(1,'Action Indonesia Day!\r\nHarimau Sumatera'),
(2,'Action Indonesia Day!\r\nBabirusa'),
(3,'Action Indonesia Day!\r\nBanteng'),
(4,'Action Indonesia Day!\r\nAnoa');

/*Table structure for table `facility` */

DROP TABLE IF EXISTS `facility`;

CREATE TABLE `facility` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

/*Data for the table `facility` */

insert  into `facility`(`id`,`name`) values 
(18,'ANIMAL GROUP - MAMMALS'),
(19,'ANIMAL GROUP - POULTRY'),
(20,'ANIMAL GROUP - CRAWL'),
(21,'INFORMATION'),
(22,'EVENT');

/*Table structure for table `guest` */

DROP TABLE IF EXISTS `guest`;

CREATE TABLE `guest` (
  `id_guest` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_guest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `guest` */

/*Table structure for table `informasi` */

DROP TABLE IF EXISTS `informasi`;

CREATE TABLE `informasi` (
  `id_informasi` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`id_informasi`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `informasi` */

insert  into `informasi`(`id_informasi`,`deskripsi`) values 
(1,'Kebun Binatang Pematang Siantar dibyuka pada tanggal 27 November 1936 yang didirikan oleh Dr.Conrad. Namun, sejak 1 September 1996 dikelola oleh Pemko Siantar, diambil oleh Pengusaha Nasional Pecinta Lingkungan seorang putra daerah Dr.H.Rahmat Shah.\r\nKebun binatang Siantar merupakan salah satu objek wisata edukasi pengenalan satwa yang wajib dikunjungi terutama untuk kalangan pelajar. Saat ini, kebun binatang Siantar memiliki kurang lebih 250 spesies satwa dengan total 900 ekor yang berasal dari dalam dan luar negeri.'),
(2,'Kebun binatang Siantar buka setiap hari 09.00 - 17.00 WIB. Tiket pada kebun binatang terbagi atas:\r\nTiket umum : Rp.30.000,-\r\nTiket pelajar : Rp.20.000,-\r\nDibawah 3 tahun : Free\r\n\r\nKeterangan:\r\nDiskon tiket untuk pelajar dari harga umum Rp.30.000,- menjadi Rp.20.000,-/siswa dengan syarat minimal 20 siswa dan tidak berlaku ditanggal merah.\r\n\r\nPara orangtua pendamping siswa atau keluarga wajib membayar harga tiket umum Rp.30.000,- , anak-anak usia 3 tahun ke atas sudah bayar penuh.\r\n\r\n'),
(3,'Beberapa fasilitas menarik yang ada di Kebun binatang Siantar:\r\n1. Museum Satwa, tiket Rp.5.000,-/orang\r\n2. Playground, tiket Rp.5.000,-/orang\r\n3. Waterboom, tiker Rp.10.000,-/orang\r\n4. Perahu bebek tiket Rp.5.000,-/orang\r\n5. Flying Fox, tiket Rp.15.000,-/orang\r\n6. Become a vet, tiket Rp.50.000,-/orang');

/*Table structure for table `mamalia` */

DROP TABLE IF EXISTS `mamalia`;

CREATE TABLE `mamalia` (
  `id_mamalia` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(250) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(250) NOT NULL,
  PRIMARY KEY (`id_mamalia`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

/*Data for the table `mamalia` */

insert  into `mamalia`(`id_mamalia`,`nama`,`deskripsi`,`gambar`) values 
(1,'Orangutan','Orangutan adalah hewan mamalia besar yang ditemukan di hutan-hutan Asia Tenggara, terutama di pulau Kalimantan dan Sumatera. Mereka dikenal karena kecerdasan dan perilaku sosial mereka yang kompleks, serta kemampuan mereka dalam menggunakan alat dan ',''),
(2,'Panda','Panda adalah hewan mamalia asli dari Tiongkok yang dikenal karena warna tubuhnya yang khas berupa bercak-bercak hitam dan putih. Mereka termasuk dalam keluarga beruang dan makanan utama mereka adalah bambu. Panda dipandang sebagai hewan yang rentan d',''),
(3,'Koala','Koala adalah hewan mamalia asli dari Australia yang dikenal karena kemampuan mereka dalam memanjat pohon dan makan daun eukaliptus. Mereka memiliki penampilan yang lucu dengan tubuh yang kecil dan bulu yang lembut. Koala termasuk dalam keluarga marsu',''),
(4,'Kanguru','Kanguru adalah hewan mamalia yang terkenal dari Australia. Mereka memiliki kaki yang panjang dan kuat, dan mampu melompat jauh hingga 9 meter. Kanguru biasanya makan rumput dan dedaunan, dan sering ditemukan di padang rumput atau hutan belukar.',''),
(5,'Babi hutan','Babi hutan atau babi liar adalah hewan mamalia dari keluarga Suidae yang ditemukan di berbagai belahan dunia, termasuk Asia, Afrika, dan Eropa. Mereka sering terlihat menggali tanah untuk mencari makanan dan hidup dalam kelompok kecil.\r\n',''),
(6,'Kijang','Kijang atau sambar adalah hewan mamalia yang termasuk dalam keluarga rusa. Mereka ditemukan di Asia dan biasanya makan rumput dan dedaunan. Kijang memiliki tanduk yang tumbuh di kepala mereka dan betina mereka memiliki bulu yang coklat pucat.',''),
(7,'Kambing liar','Kambing liar adalah hewan mamalia yang sering ditemukan di padang rumput atau daerah berbatu. Mereka dikenal karena kemampuan mereka dalam memanjat dan menghindari pemangsa. Kambing liar biasanya makan rumput dan dedaunan.',''),
(8,'Kelinci','Kelinci adalah hewan mamalia kecil yang sering dipelihara sebagai hewan peliharaan. Mereka memiliki telinga panjang dan bulu yang lembut, dan biasanya makan rumput dan dedaunan.',''),
(9,'Tupai','Tupai adalah hewan mamalia kecil yang biasanya ditemukan di hutan-hutan tropis. Mereka memiliki bulu yang lembut dan ekor yang panjang. Tupai sering makan buah-buahan dan serangga.',''),
(10,'Berang-berang','Berang-berang adalah hewan mamalia yang ditemukan di berbagai negara seperti Amerika Utara, Eropa dan Asia. Mereka memiliki tubuh yang ramping dengan kaki pendek dan ekor panjang. Berang-berang biasanya hidup di dekat air dan sering memakan ikan.',''),
(11,'Musang',' Musang adalah hewan mamalia kecil yang ditemukan di Asia dan Afrika. Mereka dikenal karena kemampuan mereka dalam memanjat dan kemampuan mereka dalam mencari makanan. Musang biasanya makan buah-buahan, serangga, dan kelelawar.\r\n',''),
(12,'Linsang','Linsang adalah hewan mamalia kecil yang ditemukan di Asia Tenggara dan India. Mereka memiliki tubuh yang ramping dan ekor yang panjang. Linsang biasanya makan hewan kecil seperti tikus dan kadal.',''),
(13,'Trenggiling','Trenggiling adalah hewan mamalia yang ditemukan di Asia dan Afrika. Mereka dikenal karena kulit keras dan bersisik yang menutupi tubuh mereka. Trenggiling biasanya makan semut dan rayap.\r\n\r\n',''),
(14,'Owa','Owa adalah hewan mamalia dari keluarga kera yang ditemukan di Indonesia dan Papua Nugini. Mereka memiliki bulu hitam dan putih yang kontras dan makanan mereka meliputi buah-buahan, daun, dan serangga.\r\n',''),
(15,'Tarsius','Tarsius adalah hewan mamalia kecil yang ditemukan di Asia Tenggara. Mereka dikenal karena mata mereka yang besar dan kemampuan mereka dalam melompat jarak yang jauh. Tarsius biasanya makan serangga dan kelelawar kecil.',''),
(16,'Gajah','Gajah adalah hewan mamalia terbesar di dunia yang ditemukan di Asia dan Afrika. Mereka dikenal karena kecerdasan mereka yang tinggi dan kemampuan mereka dalam menggunakan belalai mereka yang panjang. Gajah biasanya makan rumput, dedaunan, dan buah-bu',''),
(17,'Singa','Singa adalah hewan mamalia besar dari keluarga kucing yang ditemukan di Afrika dan Asia. Mereka dikenal karena kemampuan mereka dalam berburu dan kemampuan mereka dalam hidup dalam kelompok yang besar. Singa biasanya makan daging hewan lain.',''),
(18,'Harimau',' Harimau adalah hewan mamalia besar dari keluarga kucing yang ditemukan di Asia. Mereka dikenal karena kekuatan dan kemampuan mereka dalam berburu. Harimau biasanya makan daging hewan lain.',''),
(19,'Zebra','Zebra adalah hewan mamalia yang ditemukan di Afrika. Mereka dikenal karena garis-garis hitam dan putih yang khas pada tubuh mereka. Zebra biasanya makan rumput dan dedaunan.\r\n',''),
(20,'Beruang','Beruang adalah hewan mamalia besar yang ditemukan di berbagai belahan dunia, termasuk Amerika Utara, Asia, dan Eropa. Mereka dikenal karena kekuatan mereka dan kemampuan mereka dalam mencari makanan. Beruang biasanya makan daging, ikan, dan tumbuhan.',''),
(21,'Jerapah','Jerapah adalah hewan mamalia yang ditemukan di Afrika. Mereka dikenal karena leher mereka yang panjang dan tinggi, dan mereka adalah hewan darat terbesar di dunia. Jerapah biasanya makan daun dan tunas pohon.',''),
(22,'Kuda nil','Kuda nil adalah hewan mamalia besar yang ditemukan di Afrika. Mereka dikenal karena bentuk tubuh mereka yang mirip dengan kuda, tetapi hidup di lingkungan air dan memiliki kaki pendek. Kuda nil biasanya makan rumput, daun, dan tumbuhan air.',''),
(23,'Monyet','Monyet adalah hewan mamalia yang ditemukan di seluruh dunia, kecuali Antartika. Mereka dikenal karena kecerdasan dan kemampuan mereka dalam menggunakan alat, serta kemampuan mereka dalam hidup dalam kelompok sosial yang besar. Monyet biasanya makan b',''),
(24,'Macan tutul',' Macan tutul adalah hewan mamalia dari keluarga kucing yang ditemukan di seluruh dunia, kecuali Antartika. Mereka dikenal karena pola bintik-bintik hitam pada tubuh mereka dan kemampuan mereka dalam berburu di malam hari. Macan tutul biasanya makan d',''),
(25,'Cheetah','Cheetah adalah hewan mamalia dari keluarga kucing yang ditemukan di Afrika. Mereka dikenal karena kecepatan mereka yang tinggi dan kemampuan mereka dalam berburu mangsa dengan cara mengejar dari belakang. Cheetah biasanya makan daging hewan lain sepe','');

/*Table structure for table `melata` */

DROP TABLE IF EXISTS `melata`;

CREATE TABLE `melata` (
  `id_melata` int(11) DEFAULT NULL,
  `nama` varchar(250) NOT NULL,
  `deskripsi` varchar(250) NOT NULL,
  `gambar` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `melata` */

insert  into `melata`(`id_melata`,`nama`,`deskripsi`,`gambar`) values 
(1,'Ular','Ular adalah hewan reptil yang memiliki tubuh panjang dan ramping, dan biasanya hidup di lingkungan yang hangat dan lembap. Ular memiliki kemampuan merayap yang sangat baik dan biasanya memanfaatkan kemampuan tersebut untuk mencari mangsa atau tempat ',''),
(2,'Kadal','Kadal adalah hewan reptil yang memiliki kulit bersisik dan memiliki ekor yang panjang. Kadal hidup di berbagai lingkungan seperti hutan, padang rumput, dan air. Beberapa jenis kadal yang sering dijumpai di kebun binatang adalah iguana, kadal air, kad',''),
(3,'Kura-kura',' Kura-kura adalah hewan reptil yang memiliki cangkang pelindung di punggungnya dan kaki pendek yang menopang tubuhnya. Kura-kura hidup di berbagai lingkungan seperti sungai, danau, dan laut. Beberapa jenis kura-kura yang sering dijumpai di kebun bina',''),
(4,'Laba-laba',' Laba-laba adalah hewan yang termasuk dalam kelas arachnida, dan memiliki tubuh berbentuk oval dan delapan kaki. Laba-laba hidup di berbagai lingkungan, baik di darat maupun di udara. Beberapa jenis laba-laba yang sering dijumpai di kebun binatang ad',''),
(5,'Kepiting','Kepiting adalah hewan invertebrata yang hidup di perairan. Kepiting memiliki cangkang yang keras dan ekor yang panjang, serta memiliki dua kaki yang berubah fungsi menjadi kelas. Kepiting hidup di berbagai lingkungan seperti sungai, danau, dan laut. ','');

/*Table structure for table `service` */

DROP TABLE IF EXISTS `service`;

CREATE TABLE `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facility_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `service_facilities` (`facility_id`),
  CONSTRAINT `service_facilities` FOREIGN KEY (`facility_id`) REFERENCES `facility` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

/*Data for the table `service` */

insert  into `service`(`id`,`facility_id`,`name`,`foto`,`detail`) values 
(15,18,'jimin','21c3069df827c8d71303.jpg','atha cantik'),
(16,19,'suga','4661d91699c38ba421e3.jpg','kren'),
(17,20,'jungkook','f5999a6eaec10642fb75.jpg','hai'),
(18,21,'v','8861fc86e13762b4217b.jpg','ajknsx');

/*Table structure for table `unggas` */

DROP TABLE IF EXISTS `unggas`;

CREATE TABLE `unggas` (
  `id_unggas` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(250) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(250) NOT NULL,
  PRIMARY KEY (`id_unggas`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

/*Data for the table `unggas` */

insert  into `unggas`(`id_unggas`,`nama`,`deskripsi`,`gambar`) values 
(1,'Burung Merak','Burung Merak adalah burung yang dikenal karena keindahan bulunya yang berwarna-warni. Jantan memiliki ekor yang panjang dan berbentuk seperti payung, yang bisa dibuka dan dikembangkan menjadi lebar seperti roda. Di kebun binatang, burung Merak sering dipajang di kandang terbuka dan pengunjung dapat melihatnya dengan jelas. Selain keindahan bulunya, burung Merak juga dikenal karena tarian uniknya saat sedang memikat pasangan.',''),
(2,'Burung Kakatua','Burung Kakatua adalah burung besar dengan bulu putih yang indah dan paruh yang kuat. Ada beberapa jenis Kakatua yang dapat ditemukan di kebun binatang, termasuk Kakatua Jambul Kuning, Kakatua Raja, dan Kakatua Sulphur-crested. Burung Kakatua dikenal karena kepintarannya dalam menirukan suara manusia dan suara lainnya.',''),
(3,'Burung Cendrawasih','Burung Cendrawasih adalah burung yang indah dan eksotis. Bulunya berwarna-warni dan menakjubkan, membuatnya menjadi salah satu hewan yang paling banyak diminati di kebun binatang. Burung Cendrawasih juga dikenal karena tarian indahnya saat sedang memikat pasangan.',''),
(4,'Burung Paruh Bengkok',' Burung Paruh Bengkok adalah kelompok burung yang memiliki paruh yang bengkok dan berukuran besar. Ada beberapa jenis burung Paruh Bengkok yang dapat ditemukan di kebun binatang, seperti Kakatua Jambul Kuning dan Kukang. Burung Paruh Bengkok dikenal karena keunikannya dalam hal bentuk dan fungsi paruhnya.',''),
(5,'Jalak Bali','Jalak Bali adalah burung endemik Indonesia yang langka dan dilindungi. Burung ini memiliki bulu yang indah dan ekor yang panjang. Jalak Bali sering dipamerkan di kebun binatang sebagai upaya untuk melestarikan spesiesnya dan memberikan edukasi tentang pentingnya konservasi.',''),
(6,'Elang Jawa','Elang Jawa adalah burung pemangsa yang langka dan dilindungi. Elang Jawa memiliki ukuran yang besar dan sayap yang lebar, serta bulu berwarna cokelat tua. Di kebun binatang, pengunjung dapat melihat Elang Jawa di kandang terbuka atau dalam penerbangan bebas.',''),
(7,'Rajawali','Rajawali adalah burung pemangsa yang besar dan kuat. Rajawali memiliki sayap yang lebar dan cakar yang tajam, serta bulu berwarna cokelat kehitaman. Di kebun binatang, pengunjung dapat melihat Rajawali dalam penerbangan bebas atau di kandang terbuka.\r\n',''),
(8,'Kutilang Jawa','Kutilang Jawa adalah burung kecil dengan bulu berwarna cerah. Burung ini sering dipelihara sebagai burung peliharaan dan juga dapat ditemukan di kebun binatang. Kutilang Jawa dikenal karena keindahan bulunya dan suara kicauannya yang merdu.\r\n',''),
(9,'Pelikan','Pelikan adalah burung besar dengan paruh yang lebar dan kantung yang bisa diisi dengan air atau makanan. Pelikan sering dipajang di kandang terbuka di kebun binatang, dan pengunjung dapat melihatnya dengan jelas saat burung ini sedang makan atau berenang di kolam.',''),
(10,'Merbah Jambul','Merbah Jambul adalah burung kecil dengan bulu berwarna abu-abu kebiruan dan jambul yang menonjol di atas kepalanya. Burung ini dikenal karena suara kicauannya yang merdu dan sering dipelihara sebagai burung peliharaan. Di kebun binatang, Merbah Jambul sering dipajang di kandang terbuka.',''),
(11,'Kacer Poci','Kacer Poci adalah burung kecil dengan bulu berwarna hitam, putih, dan merah. Burung ini dikenal karena suara kicauannya yang nyaring dan sering dipelihara sebagai burung peliharaan. Di kebun binatang, Kacer Poci sering dipajang di kandang terbuka.\r\n',''),
(12,'Burung Merbah Kecil','Burung Merbah Kecil adalah burung kecil dengan bulu berwarna abu-abu dan putih. Burung ini sering dipelihara sebagai burung peliharaan karena suara kicauannya yang merdu. Di kebun binatang, Merbah Kecil sering dipajang di kandang terbuka.\r\n',''),
(13,'Rangkong','Rangkong adalah burung terbesar di dunia dan dapat tumbuh hingga 2,5 meter. Bulunya berwarna hitam dan putih, serta memiliki paruh yang panjang dan kuat. Rangkong sering dipajang di kandang terbuka di kebun binatang, dan pengunjung dapat melihatnya dengan jelas.',''),
(14,'Kuntul Kerbau','Kuntul Kerbau adalah burung air yang sering ditemukan di rawa atau sungai-sungai yang tenang. Burung ini memiliki bulu abu-abu kecoklatan dan leher yang panjang. Kuntul Kerbau sering dipajang di kandang terbuka di kebun binatang, dan pengunjung dapat melihatnya saat burung ini sedang mencari makan di air.','');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`) values 
(1,'admin','$2y$10$lOXwGxyfxEfxGxDszDNp8uyZE/ZN9GPCJTfTpDmdE84ziMgZaUvVC'),
(2,'guest',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
