import 'package:youth_tourism_ayva/domain/api_client/events_client.dart';
import 'package:youth_tourism_ayva/domain/entity/eventID.dart';
import 'package:youth_tourism_ayva/domain/entity/events.dart';
import 'package:youth_tourism_ayva/domain/entity/logings.dart';

import '../api_client/logings_client.dart';
import '../entity/logingsID.dart';

class LogingsService {
  final _logingsClient = LogingsClient();


  Future<AllLogings> getLogings() async => _logingsClient.getLogings();
  Future<LogingsID> getLogingsID(int ID) async => _logingsClient.getLogingsID(ID: ID);

}
