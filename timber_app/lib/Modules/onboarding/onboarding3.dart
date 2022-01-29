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

class onboarding3 extends StatelessWidget { 
  const onboarding3({Key? key}) : super(key: key);
 
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
            Container(
              child: Image.asset('assets/images/image (1).png'),
              margin: const EdgeInsets.all(10)
            ),
            Stack(
              children: [
                Positioned(
                  child: ElevatedButton(
                    onPressed: () {
                      print("hi");
                    },
                    child: Row(
                      children: const [
                        Text(
                          'Next', 
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                        Icon(
                          Icons.play_arrow, 
                          color: Colors.white,
                        ),
                      ]
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(lightRed),
                    )
                  ),
                  bottom: 20,
                )
              ],
            )
          ],
        ),
      ),
      backgroundColor: backgroundColor,
    );
  }
}
