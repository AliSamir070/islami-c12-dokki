import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier {
  String language = 'en';
  changeLanguage() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (language == 'ar') {
      sharedPreferences.setBool('isEnglish', true);
      language = 'en';
    } else {
      sharedPreferences.setBool('isEnglish', false);
      language = 'ar';
    }
    notifyListeners();
  }

  bool isSwitched = false;
  ThemeMode themeMode = ThemeMode.light;

  changeTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (themeMode == ThemeMode.light) {
      themeMode = ThemeMode.dark;
      sharedPreferences.setBool('isDark', true);
    } else {
      themeMode = ThemeMode.light;
      sharedPreferences.setBool('isDark', false);
    }
    notifyListeners();
  }

  SettingsProvider({bool isDark = false, bool isEnglish = true}) {
    themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    isSwitched = isDark ? true : false;
    language = isEnglish ? 'en' : 'ar';
  }
}
