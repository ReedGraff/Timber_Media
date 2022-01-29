// Flutter
import 'package:flutter/material.dart';

// External

// Local
import 'package:timber_app/Configs/routes/routes.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //Initialize Fluro router
  AppRouter.setupRouter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '',
      //Routings has been moved to config/routes and use Fluro instead
      //Implement Fluro routing
      onGenerateRoute: AppRouter.router.generator,
    );
  }
}
