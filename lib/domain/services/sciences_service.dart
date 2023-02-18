import 'package:youth_tourism_ayva/domain/entity/scienceID.dart';
import 'package:youth_tourism_ayva/domain/entity/sciences.dart';

import '../api_client/sciencs_client.dart';

class SciencesService {
  final _sciencesClient = SciencesClient();


  Future<AllSciences> getSciences() async => _sciencesClient.getSciences();
  Future<ScienceID> getScienceID(int ID) async => _sciencesClient.getScienceID(ID: ID);

}
