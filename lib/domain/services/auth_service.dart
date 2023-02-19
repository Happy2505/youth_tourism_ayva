

import '../api_client/auth_api_client.dart';
import '../data_provider/session_data_provider.dart';

class AuthService {
  final _authApiClient = AuthApiClient();
  final _sessionDataProvider = SessionDataProvider();

  // Future<bool> isAuth() async {
  //   final sessionId = await _sessionDataProvider.getSessionId();
  //   final isAuth = sessionId != null;
  //   return isAuth;
  // }

  Future<void> login(String login, String password) async {
    final sessionId = await _authApiClient.auth(
      name: login,
      pass: password,
    );
    // await _sessionDataProvider.setSessionId(sessionId);
  }

  // Future<void> logout() async {
  //   await _sessionDataProvider.deleteSessionId();
  //   await _sessionDataProvider.deleteAccountId();
  // }
}