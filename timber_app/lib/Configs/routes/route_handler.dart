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
import 'package:timber_app/Modules/onboarding/onboarding5.dart';
import 'package:timber_app/Modules/onboarding/onboarding6.dart';

import 'package:timber_app/Modules/Base/base.dart';
import 'package:timber_app/Modules/Base/pages/chat.dart';
import 'package:timber_app/Modules/Base/pages/help.dart';

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
  static Handler onboarding5Handler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) =>
          onboarding5());
  static Handler onboarding6Handler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) =>
          onboarding6());

  static Handler baseHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) =>
          base());
  static Handler chatHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) =>
          chat());
  static Handler helpHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) =>
          help());
}
