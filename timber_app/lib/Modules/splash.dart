// This Screen is for the splash interface
// Flutter

// External

// Local

// This Screen is for the onboarding process interface
// Flutter

import 'package:flutter/material.dart';

// External

// Local
import 'package:timber_app/Configs/constants/constants.dart';

class splash extends StatelessWidget {
  const splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      appBar: AppBar(
        title: const Text(
          "BMI Calculator App",
          style:
              TextStyle(color: accentHexColor, fontWeight: FontWeight.w300),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      */
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/image (1).png',
              height: 500,
            ),
            const Text(
              "Welcome",
              style: TextStyle(
                  fontFamily: "ABeeZee", fontSize: 34, color: darkRed),
            ),
            const Text(
              "Timber is dedicated to making the most digestible mobile school application. ",
              style: TextStyle(
                  fontFamily: "ABeeZee", fontSize: 20, color: textColor),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  print("hi");
                },
                child: Row(
                  children: const [
                    Text(
                      'Next',
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                  ]
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(lightRed),
                ),
              ),
            )
          ],
        ),
        padding: const EdgeInsets.all(10)
      ),
      backgroundColor: backgroundColor,
    );
  }
}
