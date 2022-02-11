// This Screen is for the splash interface
// Flutter
import 'package:flutter/material.dart';

// External
import 'package:shared_preferences/shared_preferences.dart';

// Local
import 'package:timber_app/Configs/constants/constants.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  //The name of a constructor must match the name of the enclosing class.
  @override
  initState() {
    // Initialize
    super.initState();

    logs();
  }

  logs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //prefs.clear();

    if (prefs.containsKey("timesLogged")) {
      var timesLogged = prefs.getInt("timesLogged");
      prefs.setInt("timesLogged", timesLogged! + 1);
      Future.delayed(const Duration(seconds: 3),
          () => Navigator.pushNamed(context, "base"));
    } else {
      prefs.setInt("timesLogged", 1);
      Future.delayed(const Duration(seconds: 3),
          () => Navigator.pushNamed(context, "onboarding1"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
          alignment: Alignment.center,
          child: Image.asset("assets/icons/Logo.png")),
      backgroundColor: backgroundColor,
    );
  }
}
