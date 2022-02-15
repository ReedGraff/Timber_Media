// This Screen is for the help screen interface

// Flutter
import 'package:flutter/material.dart';

// External

// Local
import 'package:timber_app/Configs/constants/constants.dart';

class help extends StatelessWidget {
  const help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            'assets/images/image (1).png',
            height: 500,
          ),
          const SizedBox(height: 25),
          const Text(
            "Help",
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
          const SizedBox(height: 25),
          const Text(
            "If you are interested in joining our development team please let us know here: Rangergraff@gmail.com!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "ABeeZee",
              fontSize: 25,
              color: textColor,
            ),
          ),
          const SizedBox(height: 25),
          const Text(
            "Currently we are using Flutter(Dart) as our primary codebase, and all of our code is currently opensourced as seen here: https://github.com/ReedGraff/Timber_Media",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "ABeeZee",
              fontSize: 25,
              color: textColor,
            ),
          ),
          const SizedBox(height: 25),
          const Text(
            "For those of you in the CS club, you are legally obligated to aid in the development of this application according to your omnipotent dictator.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "ABeeZee",
              fontSize: 25,
              color: textColor,
            ),
          ),
          const SizedBox(height: 25),
          const Text(
            "If you are from Woodberry, we as a team are hoping to develop an application or set of scripts to cut out Visualizer, Canvas, Reach, and implemet a new UI/UX for alumni connections and afternoon activities.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "ABeeZee",
              fontSize: 25,
              color: textColor,
            ),
          ),
          const SizedBox(height: 25),
        ],
      ),
      padding: const EdgeInsets.all(20)
    );
  }
}
