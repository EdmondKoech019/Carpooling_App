import 'package:shared_preferences/shared_preferences.dart';

enum Keys { email, login }

class ShController {
  late SharedPreferences _sharedPreferences;

  static final ShController _instance = ShController._();

  factory ShController() {
    return _instance;

  }

  ShController._();

  Future<void> SharedInstance() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> save({required String email}) async {
    await _sharedPreferences.setString(Keys.email.toString(), email);
    await _sharedPreferences.setBool(Keys.login.toString(), true);
  }

  bool get resultSave =>
      _sharedPreferences.getBool(Keys.login.toString()) ?? false;
}
