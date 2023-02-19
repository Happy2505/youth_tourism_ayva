import 'package:flutter/cupertino.dart';
import 'package:youth_tourism_ayva/domain/entity/eventID.dart';
import 'package:youth_tourism_ayva/domain/entity/events.dart';
import 'package:youth_tourism_ayva/domain/entity/logingsID.dart';

import '../entity/logings.dart';
import 'network_client.dart';

class LogingsClient {
  final _networkClient = NetworkClient();

  Future<AllLogings> getLogings() async {
    parser(dynamic json) {
      final jsonMap = json;
      final response = AllLogings.fromJson(jsonMap);
      return response;
    }

    final result = _networkClient.get('api/Lodgings', null, parser);
    return result;
  }

  Future<LogingsID> getLogingsID({required int ID}) async {
    parser(dynamic json) {
      final jsonMap = json;
      final response = LogingsID.fromJson(jsonMap);
      return response;
    }

    final result = _networkClient.getMap('api/Lodgings/$ID', null, parser);
    return result;
  }
}
