import 'package:flutter/material.dart';
import 'package:youth_tourism_ayva/domain/api_client/news_client.dart';
import 'package:youth_tourism_ayva/domain/entity/news.dart';


class HomeModel extends ChangeNotifier {
  final _newsService = NewsClient();
  final _news = <AllNews>[];



  HomeModel(){
    loadNews();
  }

  List<AllNews> get news => List.unmodifiable(_news);

  Future<void> loadNews() async {
    final eventsResponse = await _newsService.getNews();
    _news.add(eventsResponse);
    notifyListeners();
  }

}
