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
              'Partamiangan',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          PartamianganList(),
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
            urlToImage: '/lib/image2.jpg',
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
        autoPlayInterval: const Duration(milliseconds: 5000),
        viewportFraction: 0.85,
      ),
    );
  }
}

class PartamianganList extends StatelessWidget {
  const PartamianganList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: Column(
        children: [
          ArticleCard(
            article: Articles(
              title: 'Article 1',
              description:
                  'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            ),
          ),
          ArticleCard(
            article: Articles(
              title: 'Article 2',
              description:
                  'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            ),
          ),
          ArticleCard(
            article: Articles(
              title: 'Article 3',
              description:
                  'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            ),
          ),
        ],
      ),
    );
  }
}
