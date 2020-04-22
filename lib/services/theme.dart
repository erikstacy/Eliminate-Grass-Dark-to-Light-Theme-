import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeData _themeData;

  ThemeChanger() {
    _themeData = _lightTheme;
  }

  getTheme() => _themeData;

  setTheme(bool isDark) {
    if (isDark) {
      _themeData = _darkTheme;
    } else {
      _themeData = _lightTheme;
    }

    notifyListeners();
  }
}

/*
* Light theme
*******************************************/
final ThemeData _lightTheme = ThemeData(
  backgroundColor: Colors.white,
  iconTheme: IconThemeData(
    size: 80,
  ),
  textTheme: TextTheme(
    title: TextStyle(
      fontSize: 40,
    ),
    body1: TextStyle(
      fontSize: 16,
    ),
    headline: TextStyle(
      fontWeight: FontWeight.bold,
    ),
  ),
  appBarTheme: AppBarTheme(
    color: Colors.greenAccent,
    textTheme: TextTheme(
      title: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  toggleableActiveColor: Colors.greenAccent,
);

/*
* Dark theme
*******************************************/
final ThemeData _darkTheme = ThemeData(
  backgroundColor: Colors.black,
  iconTheme: IconThemeData(
    size: 80,
  ),
  textTheme: TextTheme(
    title: TextStyle(
      fontSize: 40,
      color: Colors.white,
    ),
    body1: TextStyle(
      fontSize: 16,
      color: Colors.white,
    ),
    headline: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    subtitle: TextStyle(
      color: Colors.white,
    ),
  ),
  appBarTheme: AppBarTheme(
    color: Colors.grey[900],
    textTheme: TextTheme(
      title: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  toggleableActiveColor: Colors.greenAccent,
);