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
        ],
      ),
      padding: const EdgeInsets.all(20)
    );
  }
}
