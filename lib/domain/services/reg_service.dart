

import '../api_client/auth_api_client.dart';

class RegService {
  final _authApiClient = AuthApiClient();

  Future<void> registration(
      String fullName, String password, String email, String number) async {
    final sessionId = await _authApiClient.registration(
      userName: fullName,
      firstName: email,
      lastName: number,
      password: password,
    );
  }
}
