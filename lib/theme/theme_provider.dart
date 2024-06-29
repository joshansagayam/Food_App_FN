import "package:flutter/material.dart";
import "package:food_app/theme/dark_mode.dart";
import "package:food_app/theme/light_mode.dart";

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightmood;
  ThemeData get themeData => _themeData;
  bool get isDarkMood => _themeData == darkmood;

  set themedata(ThemeData themedata) {
    _themeData = themedata;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightmood) {
      themedata = darkmood;
    } else {
      themedata = lightmood;
    }
  }
}
