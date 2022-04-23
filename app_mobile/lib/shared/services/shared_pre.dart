import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePreferences {
  static SharedPreferences? _preferences;

  static const _keyUsername = 'username';
  static const _keyPhone = 'phone';
  static const _keyAddress = 'address';

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUsername(String username) async =>
      await _preferences?.setString(_keyUsername, username);

  static String? getUsername() => _preferences?.getString(_keyUsername);
  static Future setPhone(String phone) async =>
      await _preferences?.setString(_keyPhone, phone);

  static String? getPhone() => _preferences?.getString(_keyPhone);
  static Future setAddress(String address) async =>
      await _preferences?.setString(_keyAddress, address);

  static String? getAddress() => _preferences?.getString(_keyAddress);
}
