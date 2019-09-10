import 'package:flutter/material.dart';
import 'package:named_routes_navigation_app/main.dart';
import 'package:named_routes_navigation_app/routing_constants.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case surveyScreen:

        // Create route for SurveyScreen.

      default:
        return MaterialPageRoute(builder: (context) => HomeScreen());
    }
  }
}
