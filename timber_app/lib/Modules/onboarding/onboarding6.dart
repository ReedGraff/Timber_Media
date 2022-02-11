// This Screen is for the onboarding process interface
// Flutter

import 'package:flutter/material.dart';

// External
import 'package:shared_preferences/shared_preferences.dart';

// Local
import 'package:timber_app/Configs/constants/constants.dart';

class onboarding6 extends StatelessWidget {
  const onboarding6({Key? key}) : super(key: key);

  /*
  var screenSize = MediaQuery.of(context).size;
  var width = screenSize.width;
  var height = screenSize.height;
  */

  logs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt("timesLogged", 1);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              const AssetImage("assets/images/image (2).jpg"),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.2), BlendMode.dstATop),
                        ),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                  ),
                  Padding(
                    child: Center(
                      child: Column(
                        children: const [
                          SizedBox(height: 150),
                          Text(
                            "Reccomendations",
                            style: TextStyle(
                              fontFamily: "ABeeZee",
                              fontSize: 40,
                              color: textColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 25),
                          Text(
                            "If there is ever a point in which you discover a bug or issue please feel free to reach out to us!",
                            style: TextStyle(
                              fontFamily: "ABeeZee",
                              fontSize: 25,
                              color: textColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.all(20),
                  )
                ]),
                Padding(
                    child: Column(
                      children: const [
                        SizedBox(height: 25),
                        Text(
                          "If you are interested in joining, please do so! We are using Flutter (dart) as our codebase, and are eager to get some new developers onboard...\n\nEmail\nRangergraff@gmail.com",
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
                  logs();
                  Navigator.pushNamed(context, "base");
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
      ],
    );
  }
}
