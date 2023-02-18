import 'package:flutter/material.dart';
import 'package:youth_tourism_ayva/domain/entity/scienceID.dart';

import '../../domain/services/sciences_service.dart';


class ScienceIDModel extends ChangeNotifier {
  final _siencesService = SciencesService();
  int countPromo = 0;
  final _sienceID = <ScienceID>[];


  ScienceIDModel(int ID){
    loadScienceID(ID);
  }


  List<ScienceID> get sienceID => List.unmodifiable(_sienceID);




  Future<void> loadScienceID(int ID) async {
    final eventIDResponse = await _siencesService.getScienceID(ID);
    _sienceID.add(eventIDResponse);
    notifyListeners();
  }

}
