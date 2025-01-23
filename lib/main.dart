import 'package:event_app/theme/dark_theme.dart';
import 'package:event_app/theme/light_theme.dart';
import 'package:event_app/theme/theme.dart';
import 'package:flutter/material.dart';

import 'introduction/introduction_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    BaseTheme lightTheme = LightTheme();
    BaseTheme darkTheme = DarkTheme();
    return MaterialApp(
      theme: lightTheme.themeData,
      darkTheme: darkTheme.themeData,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routes: {
        IntroductionScreen.routeName: (context) => IntroductionScreen(),
      },
      initialRoute: "/",
    );
  }
}
