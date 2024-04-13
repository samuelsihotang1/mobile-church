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
          //// ACARA
          Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 4.0),
            child: Text(
              'ACARA',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
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
                fontWeight: FontWeight.bold,
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
                fontWeight: FontWeight.bold,
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
                fontWeight: FontWeight.bold,
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
      items: [
        ArticleCard(
          article: Articles(
            title: 'Article 1',
            urlToImage: '/lib/image.jpg',
            source: Source(name: 'Source 1'),
            publishedAt: '2024-04-13T08:00:00Z',
            description:
                'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
          ),
        ),
        ArticleCard(
          article: Articles(
            title: 'Article 2',
            urlToImage: '/lib/image.jpg',
            source: Source(name: 'Source 2'),
            publishedAt: '2024-04-12T08:00:00Z',
            description:
                'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
          ),
        ),
      ],
      options: CarouselOptions(
        height: 400,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: const Duration(milliseconds: 10000),
        viewportFraction: 0.85,
      ),
    );
  }
}
