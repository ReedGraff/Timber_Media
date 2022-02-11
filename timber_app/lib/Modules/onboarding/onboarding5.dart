// This Screen is for the onboarding process interface
// Flutter

import 'package:flutter/material.dart';

// External

// Local
import 'package:timber_app/Configs/constants/constants.dart';
import 'package:timber_app/Modules/onboarding/onboarding6.dart';
import 'package:timber_app/Widgets/textAndIcons.dart';

class onboarding5 extends StatelessWidget {
  const onboarding5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
              child: Column(
                children: const [
                  SizedBox(height: 250),
                  textAndIcons(header: "Further Communication", listOfStrings: ["Authentication", "Class-Based Chats"], Textcolor: darkRed),
                  SizedBox(height: 50),
                  textAndIcons(header: "Further Integration", listOfStrings: ["Announcements", "Class Scheduling", "Homework"], Textcolor: Colors.blue),
                  SizedBox(height: 50),
                  textAndIcons(header: "Class Visualization", listOfStrings: ["Location", "Time", "Students"], Textcolor: darkRed),
                  SizedBox(height: 50),
                  textAndIcons(header: "Extracurricular Activities", listOfStrings: ["Clubs", "Alumni", "Internships", "Athletics"], Textcolor: Colors.blue),
                ],
              ),
              padding: const EdgeInsets.all(20)),
          backgroundColor: lightRed,
        ),
        Positioned.fill(
          left: 20,
          right: 20,
          bottom: 20,
          child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    "onboarding6"
                  );
                },
                child: Row(
                  children: const [
                    Text(
                      'Next',
                      style: TextStyle(color: lightRed),
                    ),
                    Icon(
                      Icons.play_arrow,
                      color: lightRed,
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(textColor),
                ),
              )),
        ),
      ],
    );
  }
}
