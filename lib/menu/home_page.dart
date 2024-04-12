import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
                'SIGRA',
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
              'ACARA',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          AcaraCarousel(),
          //// AYAT HARIAN
          Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 4.0),
            child: Text(
              'AYAT HARIAN',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          AcaraCarousel(),
          //// WARTA JEMAAT
          Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 4.0),
            child: Text(
              'WARTA JEMAAT',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          AcaraCarousel(),
          //// BERITA
          Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 4.0),
            child: Text(
              'BERITA',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          AcaraCarousel(),
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
      items: const [
        Card(
          child: ListTile(
            leading: Icon(Icons.notifications_sharp),
            title: Text('Text 1'),
            subtitle: Text('This is a text'),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.notifications_sharp),
            title: Text('Text 2'),
            subtitle: Text('This is a text'),
          ),
        ),
      ],
      options: CarouselOptions(
        height: 150,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        autoPlay: true,
      ),
    );
  }
}
