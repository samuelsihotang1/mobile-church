import 'package:Sigra/models/topNews.model.dart';
import 'package:flutter/material.dart';

class NewsProvider with ChangeNotifier {
  bool isLoading = true;
  TopNewsModel? resNews;

  void setDataManually() {
    resNews = TopNewsModel(
      status: "ok",
      totalResults: 2,
      articles: [
        Articles(
          source: Source(name: "Source 1"),
          title: "Sumbangan dari NN sejumlah 100 juta rupiah",
          urlToImage: "https://via.placeholder.com/750x500.jpeg?text=GAMBAR",
        ),
      ],
    );
    isLoading = false;
    notifyListeners();
  }
}
