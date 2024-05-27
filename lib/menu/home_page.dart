// menu\home_page.dart
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sigra/components/card.components.dart';
import 'package:sigra/models/article.model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 4.0, bottom: 8.0),
              child: Text(
                '- SIGRA -',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          //// Acara
          Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 4.0),
            child: Text(
              'Acara',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          AcaraCarousel(),
          //// Ayat Harian
          Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 4.0),
            child: Text(
              'Ayat Harian',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          AyatCarousel(),
          //// Warta Jemaat
          Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 4.0),
            child: Text(
              'Warta Jemaat',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          WartaCarousel(),
        ],
      ),
    ));
  }
}

class AcaraCarousel extends StatelessWidget {
  const AcaraCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        ArticleCard(
          article: Articles(
            title: 'Pemberkatan Pasangan Agus dan Yanti',
            urlToImage: '/lib/pemberkatan.jpeg',
            source: Source(name: 'Source 1'),
            publishedAt: '2024-04-13T08:00:00Z',
            description: 'Pemberkatan Pernikahan di Gereja\n\n'
                'Tanggal: 20 Mei 2024\n'
                'Waktu: 08:00 - Seleseai\n'
                'Tempat: GKII Sakkar niHuta\n\n'
                'Tata Acara:\n\n'
                'Pembukaan\n\n'
                'Pemimpin upacara menyambut semua tamu yang hadir dan mengucapkan terima kasih atas kehadiran mereka.\n'
                'Pembukaan diawali dengan doa.\n'
                'Pujian dan Penyembahan\n\n',
          ),
        ),
        ArticleCard(
          article: Articles(
            title: 'Pembaptisan Anak dari Agus dan Yanti',
            urlToImage: '/lib/baptis.jpg',
            source: Source(name: 'Source 2'),
            publishedAt: '2024-04-12T08:00:00Z',
            description: '''
Tata Acara Pembaptisan Anak di Gereja:

1. Pembukaan
   - Pemimpin ibadah menyambut semua jemaat yang hadir dan memberikan pengantar singkat mengenai makna pembaptisan anak.

2. Penyampaian Firman Tuhan
   - Pemimpin ibadah membacakan ayat-ayat Alkitab yang berkaitan dengan pembaptisan anak dan memberikan refleksi singkat.

3. Pembaptisan
   - Anak yang akan dibaptis dan orang tua/anak baptis bersama-sama mendekati baptisan.
   - Pemimpin ibadah memperkenalkan anak yang akan dibaptis dan meminta orang tua/anak baptis untuk mengucapkan ikrar iman.

4. Doa Pembaptisan
   - Pemimpin ibadah memimpin doa pembaptisan, memohon berkat dan perlindungan bagi anak yang baru dibaptis.

5. Penyampaian Sumpah Orang Tua
   - Orang tua/anak baptis memberikan sumpah untuk mendidik anak dalam ajaran Tuhan dan mengajarkan mereka untuk mengenal Yesus Kristus.

6. Penutup
   - Pemimpin ibadah mengakhiri upacara dengan doa penutup dan memberikan ucapan terima kasih kepada jemaat yang telah hadir.

Catatan: Tata acara ini dapat disesuaikan dengan kebijakan dan tradisi gereja masing-masing.
''',
          ),
        ),
      ],
      options: CarouselOptions(
        height: 400,
        enableInfiniteScroll: false,
        autoPlay: false,
        // autoPlayInterval: const Duration(milliseconds: 5000),
        viewportFraction: 0.85,
      ),
    );
  }
}

class AyatCarousel extends StatelessWidget {
  const AyatCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        ArticleCard(
          article: Articles(
              title: 'Matius 5:44',
              urlToImage: '/lib/alkitab.jpeg',
              source: Source(name: 'Source 1'),
              publishedAt: '2024-04-13T08:00:00Z',
              description: '''
Konteks: Ayat ini adalah bagian dari perkataan Yesus dalam rangkaian ajaran-Nya tentang kasih yang melampaui batas-batas manusia biasa.

Penjabaran: Yesus mengajarkan kepada pengikut-Nya untuk mencintai musuh-musuh mereka dan berdoa bagi mereka yang menganiaya mereka. Ini adalah panggilan untuk melakukan tindakan kasih tanpa pamrih kepada mereka yang mungkin tidak menyukai atau menganiaya kita.

Penerapan: Ayat ini menegaskan nilai kasih dalam menghadapi konflik dan penindasan. Ini mengajarkan bahwa kasih bukan hanya untuk orang-orang yang kita cintai, tetapi juga untuk mereka yang mungkin menjadi lawan atau musuh kita. Dengan kasih, kita dapat menjadi saluran berkat dan damai bagi orang lain, bahkan dalam situasi yang sulit sekalipun.
'''),
        ),
        ArticleCard(
          article: Articles(
              title: '2 Tawarikh 20:20',
              urlToImage: '/lib/alkitab.jpeg',
              source: Source(name: 'Source 2'),
              publishedAt: '2024-04-12T08:00:00Z',
              description: '''
Konteks: Ayat ini terjadi dalam peristiwa ketika raja Yosafat bersama umat Israel dihadapkan pada ancaman serangan besar-besaran dari musuh-musuh mereka.

Penjabaran: Dalam konteks ini, Yosafat mengingatkan umat Israel untuk mempercayai Tuhan dan nabi-Nya, yaitu untuk memegang teguh iman mereka kepada Allah dan untuk mendengarkan firman yang disampaikan melalui nabi-nabi-Nya.

Penerapan: Ayat ini mengajarkan pentingnya iman dan ketaatan kepada Allah dalam menghadapi tantangan hidup, bahwa dengan mempercayai dan mengikuti petunjuk Allah, kita akan menemukan keselamatan dan berkat-Nya.
'''),
        ),
      ],
      options: CarouselOptions(
        height: 400,
        enableInfiniteScroll: false,
        autoPlay: false,
        // autoPlayInterval: const Duration(milliseconds: 5000),
        viewportFraction: 0.85,
      ),
    );
  }
}

class WartaCarousel extends StatelessWidget {
  const WartaCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        ArticleCard(
          article: Articles(
              title: 'Warta Jemaat Minggu Advent',
              urlToImage: '/lib/warjem.jpeg',
              source: Source(name: 'Source 1'),
              publishedAt: '2024-04-13T08:00:00Z',
              description: '''
Judul: Warta Jemaat Mingguan

Tanggal: 2 Juni 2024

1. Pujian dan Penyembahan:

Dalam ibadah minggu lalu, kita merasakan kehadiran Tuhan yang nyata dalam pujian dan penyembahan. Marilah kita terus memuliakan Tuhan dengan hati yang bersyukur.
2. Kegiatan Remaja:

Remaja gereja akan mengadakan pertemuan khusus pada Sabtu sore ini pukul 16.00 WIB. Mari para remaja hadir untuk bersekutu, belajar firman Tuhan, dan membangun persekutuan yang erat.
3. Program Misi:

Kami mengundang jemaat untuk berdoa bagi tim misionaris kita yang sedang melakukan perjalanan misi ke daerah terpencil. Mari kita berdoa agar mereka menjadi saluran berkat bagi orang-orang yang mereka layani.
4. Kebutuhan Jemaat:

Ada beberapa keluarga dalam gereja yang membutuhkan bantuan dalam kebutuhan sehari-hari. Kami mengajak jemaat yang mampu untuk memberikan sumbangan atau membantu sesama yang membutuhkan.
5. Kesaksian Kebangunan Rohani:

Ada kesaksian luar biasa dari beberapa anggota jemaat yang mengalami kebangunan rohani dan menyaksikan kuasa Tuhan dalam kehidupan mereka. Mari kita terus bergumul dalam doa dan pelayanan bagi pertumbuhan rohani kita dan jemaat.
            
            '''),
        ),
        ArticleCard(
          article: Articles(
              title: 'Warta Jemaat Minggu Estomihi',
              urlToImage: '/lib/warjem.jpeg',
              source: Source(name: 'Source 2'),
              publishedAt: '2024-04-12T08:00:00Z',
              description: '''
Judul: Warta Jemaat Mingguaan

Tanggal: 29 Mei 2024

1. Minggu Sebelumnya:

Minggu lalu, kita mengalami kebahagiaan yang besar dalam ibadah bersama di gereja. Banyak di antara kita mengalami kehadiran kuasa Tuhan yang luar biasa dalam puji-pujian, penyembahan, dan khotbah.
2. Pengumuman Penting:

Kami mengundang seluruh jemaat untuk hadir dalam acara khusus 'Hari Doa dan Puasa' pada Sabtu ini, mulai pukul 09.00 WIB. Mari bersama-sama menyerahkan segala kebutuhan dan beban kita kepada Tuhan dalam doa dan puasa.
3. Acara Minggu Ini:

Minggu ini, kami akan memiliki pelaksanaan baptisan bagi beberapa anggota jemaat yang telah memutuskan untuk mengikuti Yesus dalam air baptis. Marilah kita memberikan dukungan dan doa bagi mereka yang akan mengambil langkah iman ini.
4. Kebutuhan Jemaat:

Kami juga ingin mengingatkan jemaat untuk mendoakan saudara-saudari kita yang sedang sakit dan yang sedang mengalami kesulitan finansial. Mari kita bersama-sama membawa kebutuhan mereka kepada Tuhan dalam doa.
5. Pesan Penutup:

Marilah kita terus bersatu dalam kasih Kristus dan mempersembahkan pelayanan kita bagi kemuliaan-Nya. Bersama-sama, kita adalah tubuh Kristus yang melayani dan menyaksikan kasih-Nya kepada dunia.

            '''),
        ),
      ],
      options: CarouselOptions(
        height: 400,
        enableInfiniteScroll: false,
        autoPlay: false,
        // autoPlayInterval: const Duration(milliseconds: 5000),
        viewportFraction: 0.85,
      ),
    );
  }
}
