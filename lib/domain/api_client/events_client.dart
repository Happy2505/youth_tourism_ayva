import 'package:flutter/cupertino.dart';
import 'package:youth_tourism_ayva/domain/entity/eventID.dart';
import 'package:youth_tourism_ayva/domain/entity/events.dart';

import 'network_client.dart';

class EventsClient {
  final _networkClient = NetworkClient();

  Future<AllEvents> getEvents() async {
    parser(dynamic json) {
      final jsonMap = json;
      final response = AllEvents.fromJson(jsonMap);
      return response;
    }

    final result = _networkClient.get('api/Events', null, parser);
    return result;
  }

  Future<EventID> getEventID({required int ID}) async {
    parser(dynamic json) {
      final jsonMap = json;
      final response = EventID.fromJson(jsonMap);
      return response;
    }

    final result = _networkClient.getMap('api/Events/$ID', null, parser);
    return result;
  }
}
