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
import 'package:timber_app/Modules/onboarding/onboarding3.dart';

class onboarding4 extends StatelessWidget {
  const onboarding4({Key? key}) : super(key: key);

  /*
  var screenSize = MediaQuery.of(context).size;
  var width = screenSize.width;
  var height = screenSize.height;
  */

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
              child: Column(
                children: [



                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/image (4).jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)
                      )
                    ),
                  ),

                  Padding(
                    child: Column(
                      children: const [
                        SizedBox(height: 25),
                        Text(
                          "What Do We Intend On Offering?",
                          style: TextStyle(
                            fontFamily: "ABeeZee", 
                            fontSize: 40, 
                            color: darkRed,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 25),
                        Text(
                          "Generally speaking, this app will revolve around a system for visualizing classes, and communicating with others in the community.",
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
                  ),



                ],
              ),
            ),
          backgroundColor: backgroundColor,
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
                      "onboarding5"
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
        )
      ],
    );
  }
}
