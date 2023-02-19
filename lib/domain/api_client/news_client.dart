import 'package:flutter/cupertino.dart';
import 'package:youth_tourism_ayva/domain/entity/eventID.dart';
import 'package:youth_tourism_ayva/domain/entity/news.dart';
import 'package:youth_tourism_ayva/domain/entity/newsID.dart';

import 'network_client.dart';

class NewsClient {
  final _networkClient = NetworkClient();

  Future<AllNews> getNews() async {
    parser(dynamic json) {
      final jsonMap = json;
      final response = AllNews.fromJson(jsonMap);
      return response;
    }

    final result = _networkClient.get('api/News', null, parser);
    return result;
  }

  Future<NewsID> getNewsID({required int ID}) async {
    parser(dynamic json) {
      final jsonMap = json;
      final response = NewsID.fromJson(jsonMap);
      return response;
    }

    final result = _networkClient.getMap('api/News/$ID', null, parser);
    return result;
  }
}
