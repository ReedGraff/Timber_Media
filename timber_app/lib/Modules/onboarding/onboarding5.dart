// This Screen is for the onboarding process interface
// Flutter

// External

// Local

// This Screen is for the onboarding process interface
// Flutter

import 'package:flutter/material.dart';

// External

// Local
import 'package:timber_app/Configs/constants/constants.dart';
import 'package:timber_app/Modules/onboarding/onboarding6.dart';

class onboarding5 extends StatelessWidget {
  const onboarding5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/image (1).png',
                    height: 500,
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    "Welcome 5",
                    style: TextStyle(
                        fontFamily: "ABeeZee", fontSize: 40, color: darkRed),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    "Timber is dedicated to making the most digestible mobile school application. ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "ABeeZee",
                      fontSize: 25,
                      color: textColor,
                    ),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(20)),
          backgroundColor: backgroundColor,
        ),
        Positioned(
          child: Positioned.fill(
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
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(lightRed),
                  ),
                )),
          ),
        )
      ],
    );
  }
}
