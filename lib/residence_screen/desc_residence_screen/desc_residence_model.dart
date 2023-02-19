import 'package:flutter/material.dart';
import 'package:youth_tourism_ayva/domain/entity/eventID.dart';
import 'package:youth_tourism_ayva/domain/entity/events.dart';
import 'package:youth_tourism_ayva/domain/entity/logingsID.dart';
import 'package:youth_tourism_ayva/domain/services/logings_service.dart';
import 'package:youth_tourism_ayva/domain/services/news_service.dart';

import '../../domain/entity/newsID.dart';
import '../../domain/services/events_service.dart';



class LogingsIDModel extends ChangeNotifier {
  final _logingsService = LogingsService();
  final _logingsID = <LogingsID>[];


  LogingsIDModel(int ID){
    loadlogingsID(ID);
  }


  List<LogingsID> get logingsID => List.unmodifiable(_logingsID);




  Future<void> loadlogingsID(int ID) async {
    final eventIDResponse = await _logingsService.getLogingsID(ID);
    _logingsID.add(eventIDResponse);
    notifyListeners();
  }

}
