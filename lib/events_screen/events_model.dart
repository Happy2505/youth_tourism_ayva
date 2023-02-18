import 'package:flutter/material.dart';
import 'package:youth_tourism_ayva/domain/entity/events.dart';

import '../domain/entity/sciences.dart';
import '../domain/services/events_service.dart';
import '../domain/services/sciences_service.dart';


class EventsModel extends ChangeNotifier {
  final _eventsService = EventsService();
  final _events = <AllEvents>[];

  final _sciencesService = SciencesService();
  final _sciences = <AllSciences>[];

  EventsModel(){
    loadEvents();
    loadSciences();
  }

  List<AllEvents> get events => List.unmodifiable(_events);
  List<AllSciences> get sciences => List.unmodifiable(_sciences);

  Future<void> loadEvents() async {
    final eventsResponse = await _eventsService.getEvents();
    _events.add(eventsResponse);
    print(_events[0].list[1].name);
    notifyListeners();
  }

  Future<void> loadSciences() async {
    final eventsResponse = await _sciencesService.getSciences();
    _sciences.add(eventsResponse);
    print(_sciences[0].list[1].name);

    notifyListeners();
  }
}
