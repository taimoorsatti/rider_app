

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