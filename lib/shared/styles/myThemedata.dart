import 'package:flutter/material.dart';

import 'colors.dart';

class MyThemeData {

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: mint,
      bottomNavigationBarTheme:const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false));
  static ThemeData darkTheme =ThemeData(
    scaffoldBackgroundColor: const Color(0xFF141922),
      bottomNavigationBarTheme:const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.grey,
          backgroundColor: Color(0xFF141922),
          showSelectedLabels: false,
          showUnselectedLabels: false)
  );
}
