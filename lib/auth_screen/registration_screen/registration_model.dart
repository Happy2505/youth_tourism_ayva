import 'package:flutter/cupertino.dart';
import 'package:youth_tourism_ayva/auth_screen/login_screen/login_model.dart';
import 'package:extended_masked_text/extended_masked_text.dart';

import '../../domain/api_client/api_client_exception.dart';
import '../../domain/services/reg_service.dart';

class RegistrationModel extends ChangeNotifier {
  final _regService = RegService();
  final _auth = LoginModel();

  final fullNameTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final roleTextController = TextEditingController();
  final emailTextController = TextEditingController();
  final numberTextController = MaskedTextController(
    mask: '0 (000) 000-00-00',
  );

  bool _isRegProgress = false;

  bool isCheckedTerms = false;

  bool get isAuthProgress => _isRegProgress;

  bool get canStartAuth => !_isRegProgress;

  String? _errorMessage;

  String? get errorMessage => _errorMessage;

  bool _isValid(String fullName, String role, String number, String email,
          String password) =>
      fullName.isNotEmpty &&
      role.isNotEmpty &&
      number.isNotEmpty &&
      email.isNotEmpty &&
      password.isNotEmpty;

  Future<String?> _reg(
      String login, String password, String email, String number) async {
    try {
      await _regService.registration(login, number, email, password);
    } on ApiClientExceptionReg catch (e) {
      switch (e.type) {
        case ApiClientExceptionRegType.network:
          return 'Сервер не доступен. Проверте подключение к интернету';
        case ApiClientExceptionRegType.repeat:
          return 'Логин или E-mail уже существуют';
        case ApiClientExceptionRegType.other:
          return 'Произошла ошибка. Попробуйте еще раз';
        case ApiClientExceptionRegType.phone:
          return 'Проверьте правильность указанного номер';
      }
    } catch (e) {
      return 'Неизвестная ошибка, поторите попытку';
    }
    return null;
  }

  Future<void> reg(BuildContext context) async {
    final login = fullNameTextController.text;
    final password = passwordTextController.text;
    final role = roleTextController.text;
    final email = emailTextController.text;
    final number = numberTextController.text;

    if (!_isValid(login, password, email, number, role)) {
      _updateState('Заполните все данные', false);
      return;
    }

    _updateState(null, true);

    _errorMessage = await _reg(login, password, email, number);
    if (_errorMessage == null) {
      await _auth.loginApp(login, password);
      Navigator.of(context)
          .pushNamedAndRemoveUntil('/home',(Route<dynamic> route) => false);
    } else {
      _updateState(_errorMessage, false);
    }
  }

  void _updateState(String? errorMessage, bool isAuthProgress) {
    if (_errorMessage == errorMessage && _isRegProgress == isAuthProgress) {
      return;
    }

    _errorMessage = errorMessage;
    _isRegProgress = isAuthProgress;
    notifyListeners();
  }
}
