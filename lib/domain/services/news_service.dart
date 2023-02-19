import 'package:youth_tourism_ayva/domain/api_client/events_client.dart';
import 'package:youth_tourism_ayva/domain/api_client/news_client.dart';
import 'package:youth_tourism_ayva/domain/entity/eventID.dart';
import 'package:youth_tourism_ayva/domain/entity/events.dart';
import 'package:youth_tourism_ayva/domain/entity/newsID.dart';

import '../entity/news.dart';

class NewsService {
  final _newsClient = NewsClient();


  Future<AllNews> getNews() async => _newsClient.getNews();
  Future<NewsID> getNewsID(int ID) async => _newsClient.getNewsID(ID: ID);

}
