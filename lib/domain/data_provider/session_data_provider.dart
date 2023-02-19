import 'package:flutter_secure_storage/flutter_secure_storage.dart';


abstract class _Keys {
  static const name = 'name';
  static const fam = 'fam';
  static const number = 'number';
}


class SessionDataProvider {
  static const _secureStorage = FlutterSecureStorage();

  Future<String?> getname() => _secureStorage.read(key: _Keys.name);

  Future<void> setname(String value) {
    return _secureStorage.write(key: _Keys.name, value: value);
  }


  Future<void> setfam(String value) {
    return _secureStorage.write(key: _Keys.fam, value: value);
  }
  Future<String?> getfam() => _secureStorage.read(key: _Keys.fam);



  Future<void> setnum(String value) {
    return _secureStorage.write(key: _Keys.number, value: value);
  }
  Future<String?> getnum() => _secureStorage.read(key: _Keys.number);


}