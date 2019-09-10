import 'package:flutter/material.dart';
import 'package:named_routes_navigation_app/main.dart';
import 'package:named_routes_navigation_app/routing_constants.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // All routing logic is encapsulated and handled here, no need to duplicate code for routing purposes.
    switch (settings.name) {
      case homeScreen:
      // MaterialPageRoute transitions to the new route using a platform specific animation.
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case surveyScreen:
        return MaterialPageRoute(builder: (context) => SurveyScreen());
      default:
        return MaterialPageRoute(builder: (context) => HomeScreen());
    }
  }
}
