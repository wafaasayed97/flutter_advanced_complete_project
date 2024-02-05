import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_project/core/routing/routes.dart';
import 'package:flutter_advanced_complete_project/features/onboarding/ui/screens/onboarding_screen.dart';

import '../../features/login/ui/screens/login_screen.dart';

class AppRouter{
  Route generateRoute(RouteSettings settings){
    final arguments = settings.arguments;
    switch(settings.name){
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (context) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      default:
        return MaterialPageRoute(builder: (context) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ));
    }
  }
}