import 'package:flutter/material.dart';
import 'package:store_rest_api/presentation/home_screen/view/home_screen.dart';
import 'package:store_rest_api/presentation/resources/strings_manager.dart';


class Routes {
  //static const String splashRoute = "/";
  static const String homeScreen = "/";
  // static const String registerRoute = "/register";
  // static const String forgetPasswordRoute = "/forgetPassword";
  // static const String homeRoute = "/home";
  // static const String onBoardingRoute = "/onBoarding";
  // static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
   switch (settings.name) {
    case Routes.homeScreen:
    return MaterialPageRoute(builder: (_) =>  HomeScreen());
  //     case Routes.loginRoute:
  //       return MaterialPageRoute(builder: (_) => const LoginView());
  //     case Routes.registerRoute:
  //       return MaterialPageRoute(builder: (_) => const RegisterView());
  //     case Routes.forgetPasswordRoute:
  //       return MaterialPageRoute(builder: (_) => const ForgetPasswordView());
  //     case Routes.homeRoute:
  //       return MaterialPageRoute(builder: (_) => const MainView());
  //     case Routes.storeDetailsRoute:
  //       return MaterialPageRoute(builder: (_) => const StoreDetailsView());
  //       case Routes.onBoardingRoute:
  //       return MaterialPageRoute(builder: (_) => const OnBoardingView());
     default:
       return unDefinedRoute();
    }
   }
  static Route<dynamic>unDefinedRoute (){
    return MaterialPageRoute(builder: (_)=> Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.noRouteFound),
      ),
      body: const Center(child: Text(AppStrings.noRouteFound),),
    ));
  }
}