import 'package:shared_preferences/shared_preferences.dart';

class HelperFunction {
  static String sharedPreferenceUserLogInKey = 'ISLOGGEDIN';
  static String sharedPreferenceUserFirstNameKey = 'USERFIRSTNAMEKEY';
  static String sharedPreferenceUserLastNameKey = 'USERLASTNAMEKEY';
  static String sharedPreferenceUserPhoneNumberKey = 'USERPHONENUMBERKEY';
  static String sharedPreferenceUserEmailKey = 'USEREMAILKEY';

  /// Saving data to share preference path
  static Future<bool> saveUserLoggedInSharedPreference(
      bool userIsLoggedIn) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setBool(sharedPreferenceUserLogInKey, userIsLoggedIn);
  }

  static Future<bool> saveUserFirstNameSharedPreference(
      String firstName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString(sharedPreferenceUserFirstNameKey, firstName);
  }

  static Future<bool> saveUserLastNameSharedPreference(String lastName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString(sharedPreferenceUserLastNameKey, lastName);
  }

  static Future<bool> saveUserPhoneNumberSharedPreference(
      String phoneNumber) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString(
        sharedPreferenceUserPhoneNumberKey, phoneNumber);
  }

  static Future<bool> saveUserEmailSharedPreference(String userEmail) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString(sharedPreferenceUserEmailKey, userEmail);
  }

  /// Getting data from share preference path
  static Future<bool> getUserLoggedInSharedPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getBool(sharedPreferenceUserLogInKey);
  }

  static Future<String> getUserFirstNameSharedPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getString(sharedPreferenceUserFirstNameKey);
  }

  static Future<String> getUserLastNameSharedPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getString(sharedPreferenceUserLastNameKey);
  }

  static Future<String> getUserPhoneNumberSharedPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getString(sharedPreferenceUserPhoneNumberKey);
  }

  static Future<String> getUserEmailSharedPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getString(sharedPreferenceUserEmailKey);
  }
}
