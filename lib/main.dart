import 'package:flutter/material.dart';

import 'introduction/introduction_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        IntroductionScreen.routeName: (context) => IntroductionScreen(),
      },
      initialRoute: "/",
    );
  }
}
