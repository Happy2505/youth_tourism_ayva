import 'package:flutter/cupertino.dart';
import 'package:youth_tourism_ayva/domain/entity/eventID.dart';
import 'package:youth_tourism_ayva/domain/entity/scienceID.dart';

import '../entity/sciences.dart';
import 'network_client.dart';

class SciencesClient {
  final _networkClient = NetworkClient();

  Future<AllSciences> getSciences() async {
    parser(dynamic json) {
      final jsonMap = json;
      final response = AllSciences.fromJson(jsonMap);
      return response;
    }

    final result = _networkClient.get('api/Sciences', null, parser);
    return result;
  }

  Future<ScienceID> getScienceID({required int ID}) async {
    parser(dynamic json) {
      final jsonMap = json;
      final response = ScienceID.fromJson(jsonMap);
      return response;
    }

    final result = _networkClient.getMap('api/Sciences/$ID', null, parser);
    return result;
  }
}
