import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/analytics_screen.dart';
import 'screens/dashboard_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => DashboardScreen());
      case "/analytics":
        return MaterialPageRoute(builder: (_) => AnalyticsScreen());
      // case "/dashboard":
      //   return MaterialPageRoute(builder: (_) => DashboardScreen());
      default:
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
    }
  }
}
