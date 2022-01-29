// Flutter

// External
import 'package:fluro/fluro.dart';

// Local
import 'package:timber_app/Configs/routes/route_handler.dart';

 
class AppRouter {
  static FluroRouter router = FluroRouter();
  static void setupRouter() {
    //Define app routes and pair it with a handler
    router.define('', handler: AppRouterHandler.splashHandler);
    router.define('onboarding1', handler: AppRouterHandler.onboarding1Handler);
    router.define('onboarding2', handler: AppRouterHandler.onboarding2Handler);
    router.define('onboarding3', handler: AppRouterHandler.onboarding3Handler);
    router.define('onboarding4', handler: AppRouterHandler.onboarding4Handler);
  }
}
