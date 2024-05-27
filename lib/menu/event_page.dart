// menu\event_page.dart
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sigra/components/card.components.dart';
import 'package:sigra/models/article.model.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

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
          //// Ibadah Raya
          Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 4.0),
            child: Text(
              'Ibadah Raya',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IbadahRayaCarousel(),
          //// Partamiangan
          Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 4.0),
            child: Text(
              'Akan Datang',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          UpcomingCarousel(),
        ],
      ),
    ));
  }
}

class IbadahRayaCarousel extends StatelessWidget {
  const IbadahRayaCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        ArticleCard(
          article: Articles(
              title: 'Natal Bersama',
              urlToImage: '/lib/natal.jpeg',
              source: Source(name: 'Source 1'),
              publishedAt: '2024-04-13T08:00:00Z',
              description: '''
Tata Acara Natal:

Pembukaan:

Penyambutan jemaat dengan lagu-lagu Natal dan suasana yang penuh sukacita.
Doa pembukaan untuk memulai ibadah dengan berkat Tuhan.
Pujian dan Penyembahan:

Segmen ini diisi dengan nyanyian pujian Natal yang menggambarkan kebesaran dan kelahiran Yesus Kristus.
Pemimpin ibadah mengundang jemaat untuk bersorak dan bersukacita dalam menyambut kelahiran Juruselamat.
Pembacaan Firman:

Bacaan Alkitab yang mengisahkan kisah kelahiran Yesus Kristus dari Injil Lukas atau Matius.
Refleksi singkat tentang makna Natal dan kasih Allah yang diungkapkan melalui kelahiran Yesus.
Pesan Natal:

Khotbah atau pesan Natal yang mengajak jemaat untuk merenungkan makna Natal dalam kehidupan mereka.
Renungan dan Doa:

Waktu untuk merenungkan kelahiran Yesus Kristus dan berdoa bersama sebagai jemaat.
Pemberkatan:

Doa penutup dan berkat untuk jemaat, serta harapan akan damai dan sukacita Natal.
Pemberkatan dan Penutup:

Penutupan ibadah dengan lagu-lagu Natal terakhir dan undangan untuk mengikuti acara Natal selanjutnya di gereja.
            '''),
        ),
        ArticleCard(
          article: Articles(
              title: 'Rayakan Hari Paskah',
              urlToImage: '/lib/paskah.jpg',
              source: Source(name: 'Source 2'),
              publishedAt: '2024-04-12T08:00:00Z',
              description: '''
Tata Acara Paskah:

Pembukaan:

Penyambutan jemaat dengan lagu-lagu paskah yang meriah dan suasananya yang penuh pengharapan.
Doa pembukaan untuk memulai ibadah dengan berkat Tuhan.
Pujian dan Penyembahan:

Nyanyian pujian yang merayakan kebangkitan Kristus dan kemenangan-Nya atas kematian.
Pembacaan Firman:

Bacaan Alkitab yang mengisahkan kisah kebangkitan Yesus Kristus dari Injil Matius, Markus, Lukas, atau Yohanes.
Refleksi singkat tentang makna Paskah dan pentingnya kebangkitan Kristus bagi umat manusia.
Khotbah Paskah:

Khotbah atau pesan Paskah yang mengajak jemaat untuk merenungkan arti kebangkitan Kristus dalam kehidupan mereka.
Renungan dan Doa:

Waktu untuk merenungkan kebangkitan Kristus dan memohon berkat serta kuasa-Nya dalam hidup kita.
Pemberkatan:

Doa penutup dan berkat untuk jemaat, serta harapan akan hidup baru dalam Kristus.
Pemberkatan dan Penutup:

Penutupan ibadah dengan nyanyian pujian dan undangan untuk merayakan Paskah bersama-sama dalam persekutuan gereja.
            
            '''),
        ),
      ],
      options: CarouselOptions(
        height: 400,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: const Duration(milliseconds: 5000),
        viewportFraction: 0.85,
      ),
    );
  }
}

class UpcomingCarousel extends StatelessWidget {
  const UpcomingCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        ArticleCard(
          article: Articles(
              title: 'Article 1',
              urlToImage: '/lib/pemberkatan.jpeg',
              source: Source(name: 'Source 1'),
              publishedAt: '2024-04-13T08:00:00Z',
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
'''),
        ),
        ArticleCard(
          article: Articles(
            title: 'Article 2',
            urlToImage: '/lib/baptis.jpg',
            source: Source(name: 'Source 2'),
            publishedAt: '2024-04-12T08:00:00Z',
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
      ],
      options: CarouselOptions(
        height: 400,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: const Duration(milliseconds: 5000),
        viewportFraction: 0.85,
      ),
    );
  }
}
