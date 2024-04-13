// components\card.components.dart
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sigra/models/article.model.dart';
import 'package:sigra/pages/article_details.page.dart';

class ArticleCard extends StatelessWidget {
  final Articles article;

  const ArticleCard({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ArticlePage(
              article: article,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(12.0),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 3.0,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (article.urlToImage != null)
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 12.0,
                ),
                child: Container(
                  height: 200.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(article.urlToImage ?? ''),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            if (article.title != null)
              Container(
                padding: const EdgeInsets.only(
                  left: 5.0,
                  right: 5.0,
                ),
                child: Text(
                  article.title ?? '',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
            if (article.publishedAt != null)
              Container(
                padding: const EdgeInsets.only(
                  top: 0,
                  left: 5.0,
                  right: 5.0,
                  bottom: 10.0,
                ),
                child: Row(
                  children: [
                    Text(
                      article.publishedAt != null
                          ? DateFormat('dd MMMM yyyy')
                              .format(DateTime.parse(article.publishedAt!))
                          : '',
                      style: const TextStyle(
                        color: Color.fromARGB(150, 0, 0, 0),
                      ),
                    ),
                  ],
                ),
              ),
            if (article.description != null)
              Container(
                padding: const EdgeInsets.only(
                  top: 0,
                  left: 5.0,
                  right: 5.0,
                  bottom: 5.0,
                ),
                child: Text(
                  article.description ?? 'No Description',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Color.fromARGB(180, 0, 0, 0),
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
