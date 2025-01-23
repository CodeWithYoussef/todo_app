import 'dart:ui';
import 'package:event_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/theme_data.dart';

class LightTheme extends BaseTheme {
  @override
  Color get backgroundColor => Color(0xffF2FEFF);

  @override
  Color get primaryColor => Color(0xff5669FF);

  @override
  Color get secondaryColor => Color(0xff1C1C1C);

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
          backgroundColor: primaryColor,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
        ),
        textTheme: TextTheme(),
      );
}
