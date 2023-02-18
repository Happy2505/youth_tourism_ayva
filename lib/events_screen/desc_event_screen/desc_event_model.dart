import 'package:flutter/material.dart';
import 'package:youth_tourism_ayva/domain/entity/eventID.dart';
import 'package:youth_tourism_ayva/domain/entity/events.dart';

import '../../domain/services/events_service.dart';



class EventIDModel extends ChangeNotifier {
  final _eventsService = EventsService();
  int countPromo = 0;
  final _eventID = <EventID>[];
  int countCategory = 0;
  int countValidCategory = 0;

  EventIDModel(int ID){
    loadEventID(ID);
  }


  List<EventID> get eventID => List.unmodifiable(_eventID);




  Future<void> loadEventID(int ID) async {
    final eventIDResponse = await _eventsService.getEventID(ID);
    _eventID.add(eventIDResponse);
    print(_eventID[0].name);
    notifyListeners();
  }

// Future<void> openLoyalty() async {
//   final loyaltyResponse = await _catalogService.getAccountInfo();
//   loyalty.add(loyaltyResponse.loyaltyProgramDetails);
//   notifyListeners();
// }
//
// Future<void> openCategory() async {
//   _category.clear();
//   countCategory = 0;
//   final categoryResponse = await _catalogService.getCategory();
//   countValidCategory = categoryResponse.totalCount;
//   for (int index = 0; index < countValidCategory; index++) {
//     final category = categoryResponse.description[index];
//     if (category.parentId == "00000000-0000-0000-0000-000000000000") {
//       _category.add(category);
//       countCategory++;
//     }
//   }
//   notifyListeners();
// }
}
