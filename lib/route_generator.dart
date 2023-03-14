

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rider_app/screens/login/login_screen.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {

      case "/":
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
    //
    //   case OnBoardScreen.routeName:
    //     return MaterialPageRoute(
    //       builder: (_) => OnBoardScreen(),
    //     );
    //
    //
    // case ForgotPasswordScreen.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => ForgotPasswordScreen(),
    //   );
    //
    // case OTPScreen.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => OTPScreen(),
    //   );
    //
    // case ResetPassScreen.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => ResetPassScreen(),
    //   );
    //
    //   case SelectRideScreen.routeName:
    //     return MaterialPageRoute(
    //       builder: (_) => SelectRideScreen(),
    //     );

      default:
        return _errorRoute();
    }

  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Error'),
          ),
          body: Center(
            child: Text('ERROR'),
          ),
        ),
      );
    });
  }

}