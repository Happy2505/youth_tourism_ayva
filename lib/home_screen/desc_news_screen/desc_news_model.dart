import 'package:flutter/material.dart';
import 'package:youth_tourism_ayva/domain/entity/eventID.dart';
import 'package:youth_tourism_ayva/domain/entity/events.dart';
import 'package:youth_tourism_ayva/domain/services/news_service.dart';

import '../../domain/entity/newsID.dart';
import '../../domain/services/events_service.dart';



class NewsIDModel extends ChangeNotifier {
  final _newsService = NewsService();
  final _newsID = <NewsID>[];


  NewsIDModel(int ID){
    loadNewsID(ID);
  }


  List<NewsID> get newsID => List.unmodifiable(_newsID);




  Future<void> loadNewsID(int ID) async {
    final eventIDResponse = await _newsService.getNewsID(ID);
    _newsID.add(eventIDResponse);
    notifyListeners();
  }

}
