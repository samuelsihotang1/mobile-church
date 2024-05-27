// menu\church_page.dart
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sigra/components/card.components.dart';
import 'package:sigra/models/article.model.dart';

class ChurchPage extends StatelessWidget {
  const ChurchPage({super.key});

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
          //// ACARA
          Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 4.0),
            child: Text(
              'Sejarah Gereja',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SejarahCarousel(),
          //// Struktur Gereja
          Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 4.0),
            child: Text(
              'Struktur Gereja',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          BphCarousel(),
        ],
      ),
    ));
  }
}

class SejarahCarousel extends StatelessWidget {
  const SejarahCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0, left: 25.0),
      child: ArticleCard(
        article: Articles(
            title: 'Sejarah Singkat GKII Sangkar NiHuta', description: '''
Gereja Kemenangan Iman Indonesia dimulai dari persekutuan doa "I Care" dan didirikan oleh pelayanan Pdt. DR. Benjamin Munthe (didaftarkan di Departemen Agama pada 29 November 1979) yang memiliki beban dan kerinduan untuk melayani petani, orang-orang miskin dan tidak mampu di kampung-kampung. GKII dimulai dari keanggotaan satu keluarga, yaitu Keluarga Bapak Pdt. DR. Benjamin Munthe sendiri, yang dijauhi oleh keluarga besarnya karena memulai pelayanan di tanah Batak dengan tidak mengikuti "adat istiadat" yang jamak berlaku saat itu, karena diyakini merupakan kepercayaan lain dan penyembahan ilah lain. Sekarang (2019) GKII telah tersebar di seluruh Indonesia dan Timor Leste, dengan lebih dari 400 cabang dan setiap minggunya melaksanakan pelayanan siaran langsung dan tunda secara reguler melalui Radio (RRI Pro II, Joy FM, aplikasi Radio Digital VM Radio) dan media sosial.

Pada tanggal 17 September 2000, Gereja Kemenangan Iman Indonesia menjadi salah satu dari gereja-gereja di Indonesia yang diteror oleh pemboman dan penembakan. Selain menerima beberapa bom rakitan, salah satu dari staff gereja yang adalah supir dari Pdt. DR. Benjamin Munthe, yaitu Kaleb, meninggal dunia akibat penembakan yang terjadi dalam perjalan menuju Ibadah Minggu di gereja Diarsipkan 2019-07-12 di Wayback Machine..[5]

Semenjak berpulangnya Bapak Pendiri/Founder Gereja Kemenangan Iman Indonesia (GKII), Bapak Pdt, DR. Benjamin Munthe pada tahun 2012, pelayanan beliau dilanjutkan oleh anaknya, Pdt. Dr. Gideon Munthe,SE, M.Min.

Pdt. Dr. Gideon Munthe, SE, M.Min, selaku Ketua Umum GKII dan Ketua Sinode GKII (2012-sekarang) melanjutkan pelayanan yang telah dikerjakan oleh Bapak Founder GKII yaitu Pemberitaan Firman Tuhan, Keselamatan Jiwa, dan Penginjilan yang disertai tanda ajaib dan mujizat. Dan dibawah kepemimpinan beliau, GKII mengalami lonjakan jumlah KKR per tahun, dari puluhan menjadi ratusan KKR setiap tahunnya. KKR-KKR tersebut diadakan dengan tujuan yang sama yaitu untuk membawakan Kabar Baik kepada orang-orang yang belum pernah mendengar Injil dan menyembuhkan yang sakit serta membebaskan yang terikat (Luk. 10:9). .
          
          '''),
      ),
    );
  }
}

class BphCarousel extends StatelessWidget {
  const BphCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        ArticleCard(
          article: Articles(
              title: 'BPH',
              urlToImage: '/lib/gkii.jpg',
              source: Source(name: 'Source 1'),
              publishedAt: '2024-04-13T08:00:00Z',
              description: ''' '''),
        ),
        ArticleCard(
          article: Articles(
              title: 'Gembala & Ps',
              urlToImage: '/lib/gkii.jpg',
              source: Source(name: 'Source 2'),
              publishedAt: '2024-04-12T08:00:00Z',
              description: ''' '''),
        ),
      ],
      options: CarouselOptions(
        height: 400,
        enableInfiniteScroll: false,
        autoPlay: false,
        viewportFraction: 0.85,
      ),
    );
  }
}
