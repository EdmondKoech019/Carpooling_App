import 'package:shared_preferences/shared_preferences.dart';

enum Keys { email, login, name, phone, car, city, gender }

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

  Future<void> saveInformation(
      {required String phone,
      required String car,
      required String city,
      required String name,
      required String gender}) async {
    await _sharedPreferences.setString(Keys.phone.toString(), phone);
    await _sharedPreferences.setString(Keys.car.toString(), car);
    await _sharedPreferences.setString(Keys.city.toString(), city);
    await _sharedPreferences.setString(Keys.name.toString(), name);
    await _sharedPreferences.setString(Keys.gender.toString(), gender);
  }

  bool get resultSave =>
      _sharedPreferences.getBool(Keys.login.toString()) ?? false;

  String get printemail =>
      _sharedPreferences.getString(Keys.email.toString()) ?? 'dsd@gmail.com';

  String get returnName =>
      _sharedPreferences.getString(Keys.name.toString()) ?? 'Driver';

  String get returnPhone =>
      _sharedPreferences.getString(Keys.phone.toString()) ?? '-------';

  String get returnCar =>
      _sharedPreferences.getString(Keys.car.toString()) ?? '-------';

  String get returnCity =>
      _sharedPreferences.getString(Keys.city.toString()) ?? '-------';

  String get returnGender =>
      _sharedPreferences.getString(Keys.gender.toString()) ?? '-------';
}
