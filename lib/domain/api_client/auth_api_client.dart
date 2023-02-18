import 'network_client.dart';

class AuthApiClient {
  final _networkClient = NetworkClient();

  Future<String> auth({
    required String name,
    required String pass,
  }) async {
    final accessToken = await _validateUser(
      name: name,
      pass: pass,
    );
    return accessToken;
  }

  Future<String> registration({
    required String userName,
    required String firstName,
    required String lastName,
    required String password,
  }) async {
    final registration = _registrationUser(
      userName: userName,
      firstName: firstName,
      lastName: lastName,
      password: password,

    );
    return registration;
  }

  Future<String> _registrationUser({
    required String userName,
    required String firstName,
    required String lastName,
    required String password,
  }) async {
    String parser(dynamic json) {
      final token = json as String;
      return token;
    }

    final parameters = <String, dynamic>{};
    final Urlparameters = <String, dynamic>{
      'username': userName,
      'firstName': firstName,
      'lastName': lastName,
      'pass': password,
    };
    final result = _networkClient.postLogin(
        'api/Authorization/Register',
        parameters,
        parser,
        Urlparameters
    );
    return result;
  }

  Future<String> _validateUser({
    required String name,
    required String pass,
  }) async {
    String parser(dynamic json) {
      final token = json as String;
      // final token = jsonMap['access_token'] as String;
      return token;
    }

    final parameters = <String, dynamic>{};
    final Urlparameters = <String, dynamic>{

      'name': name,
      'pass': pass,
    };
    final result = _networkClient.postLogin(
        'api/Authorization/Authorize',
        parameters,
        parser,
        Urlparameters
    );
    return result;
  }
}
