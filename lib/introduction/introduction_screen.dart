  import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:toggle_switch/toggle_switch.dart';

  class IntroductionScreen extends StatelessWidget {
    static const String routeName = "/";

    const IntroductionScreen({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Image.asset(
            "assets/pictures/logo.png",
            width: 159,
            height: 50,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ///sized box
              SizedBox(
                height: 28,
              ),
              ///logo header
              Image.asset(
                "assets/pictures/logo header.png",
                width: double.infinity,
                height: 361,
              ),
              ///sized box
              SizedBox(
                height: 28,
              ),

              ///Personalize Your Experience
              Row(
                children: [
                  Text(
                    "Personalize Your Experience",
                    style: TextStyle(
                      color: Color(0xff5669FF),
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),

              ///Choose your preferred theme
              Text(
                "Choose your preferred theme and language to get started with a comfortable, tailored experience that suits your style.",
                style: TextStyle(
                  color: Color(0xff1C1C1C),
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),

              ///sized box
              SizedBox(
                height: 28,
              ),

              ///Language
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Language",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff5669FF)),
                  ),
                  ToggleSwitch(
                    minWidth: 73.0,
                    minHeight: 30.0,
                    initialLabelIndex: 0,
                    cornerRadius: 20.0,
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 2,
                    icons: [
                      FontAwesomeIcons.flagUsa,
                      MdiIcons.abjadArabic,
                    ],
                    iconSize: 30.0,
                    activeBgColors: [[Colors.green, Colors.greenAccent], [Colors.red, Colors.redAccent]],
                    animate: true, // with just animate set to true, default curve = Curves.easeIn
                    curve: Curves.bounceInOut, // animate must be set to true when using custom curve
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
                ],
              ),

              ///sized box
              SizedBox(
                height: 20,
              ),

              ///theme
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Theme",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff5669FF)),
                  ),
                  ToggleSwitch(
                    minWidth: 73.0,
                    minHeight: 30.0,
                    initialLabelIndex: 0,
                    cornerRadius: 20.0,
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 2,
                    icons: [
                      FontAwesomeIcons.lightbulb,
                      FontAwesomeIcons.solidLightbulb,
                    ],
                    iconSize: 30.0,
                    activeBgColors: [[Colors.orangeAccent, Colors.orange], [Colors.cyan, Colors.cyanAccent]],
                    animate: true, // with just animate set to true, default curve = Curves.easeIn
                    curve: Curves.bounceInOut, // animate must be set to true when using custom curve
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
                ],
              ),

              ///sized box
              SizedBox(
                height: 28,
              ),

              ///button
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Let's Start",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  backgroundColor: Color(0xff5669FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  )
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
