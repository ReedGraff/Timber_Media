// Flutter
// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';

// External
import 'package:fluro/fluro.dart';

// Local
import 'package:timber_app/Modules/splash.dart';
import 'package:timber_app/Modules/onboarding/onboarding1.dart';
import 'package:timber_app/Modules/onboarding/onboarding2.dart';
import 'package:timber_app/Modules/onboarding/onboarding3.dart';
import 'package:timber_app/Modules/onboarding/onboarding4.dart';

//try using material… I’m not sure if it will work

class AppRouterHandler {
  //User a handler to route
  static Handler splashHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) =>
          splash());
  static Handler onboarding1Handler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) =>
          onboarding1());
  static Handler onboarding2Handler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) =>
          onboarding2());
  static Handler onboarding3Handler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) =>
          onboarding3());
  static Handler onboarding4Handler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) =>
          onboarding4());
}
