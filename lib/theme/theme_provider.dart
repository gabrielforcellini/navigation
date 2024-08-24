import 'package:flutter/material.dart';
import 'package:navigation/theme/theme.dart'; // Certifique-se de que este arquivo existe e contém os temas

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get getThemeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    // Alterna entre lightMode e darkMode
    if (_themeData == lightMode) {
      _themeData = darkMode;
    } else {
      _themeData = lightMode;
    }
    notifyListeners();
  }
}
