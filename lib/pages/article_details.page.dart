//pages\article_details.page.dart
import 'package:flutter/material.dart';
import 'package:sigra/models/article.model.dart';

class ArticlePage extends StatelessWidget {
  final Articles article;

  const ArticlePage({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title ?? 'No Title'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (article.urlToImage != null)
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 16.0,
                ),
                child: Container(
                  height: 200.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(article.urlToImage ?? ''),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            if (article.description != null)
              Text(
                article.description ?? '',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              )
          ],
        ),
      ),
    );
  }
}
