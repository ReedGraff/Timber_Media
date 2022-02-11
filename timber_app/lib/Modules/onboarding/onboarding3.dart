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
import 'package:timber_app/Modules/onboarding/onboarding4.dart';

class onboarding3 extends StatefulWidget {
  const onboarding3({Key? key}) : super(key: key);

  @override
  _onboarding3State createState() => _onboarding3State();
}

class _onboarding3State extends State<onboarding3> {
  
  late Image image1;
  late Image image2;

  @override
  void initState() {
    super.initState();
    image1 = Image.asset("assets/images/image (1).jpg");
  }

  @override
  void didChangeDependencies() {
    precacheImage(image1.image, context);
    super.didChangeDependencies();
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: image1.image,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.2),
              BlendMode.dstATop
            ),
          ),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              left: 20,
              right: 20,
              bottom: 20,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(children: [
                    Expanded(
                      child: Column(
                        children: const <Widget>[],
                      ),
                    ),
                    const Text(
                      "Community Wide Chat App",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "ABeeZee", fontSize: 40, color: darkRed),
                    ),
                    const SizedBox(height: 25),
                    const Text(
                      "Through this app, members within the community may communicate with eachother.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "ABeeZee",
                        fontSize: 25,
                        color: textColor,
                      ),
                    ),
                    const SizedBox(height: 25),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "onboarding4");
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
                        backgroundColor:
                            MaterialStateProperty.all<Color>(lightRed),
                      ),
                    )
                  ])),
            ),
          ],
        ),
      ),
      backgroundColor: backgroundColor,
    );
  }
}
