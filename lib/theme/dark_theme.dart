import 'dart:ui';

import 'package:event_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/theme_data.dart';

class DarkTheme extends BaseTheme {
  @override
  Color get backgroundColor => Color(0xff101127);

  @override
  Color get primaryColor => Color(0xff5669FF);

  @override
  Color get secondaryColor => Color(0xffF4EBDC);

  @override
  ThemeData get themeData => ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: backgroundColor,
    secondaryHeaderColor: secondaryColor,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: backgroundColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: backgroundColor,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
    ),
    textTheme: TextTheme(),
  );
}