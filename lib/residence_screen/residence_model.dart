import 'package:flutter/cupertino.dart';
import 'package:youth_tourism_ayva/domain/entity/logings.dart';

import '../domain/api_client/logings_client.dart';

class ResidenceModel extends ChangeNotifier{
  final _logingsService = LogingsClient();
  final _logings = <AllLogings>[];



  ResidenceModel(){
    loadNews();
  }

  List<AllLogings> get logings => List.unmodifiable(_logings);

  Future<void> loadNews() async {
    final eventsResponse = await _logingsService.getLogings();
    _logings.add(eventsResponse);
    notifyListeners();
  }
}