import 'package:doctor/core/routing/routers.dart';
import 'package:doctor/features/login_feature/views/login_view.dart';
import 'package:flutter/material.dart';

class AppRouting {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routers.loginView:
        return MaterialPageRoute(builder: (_) => const LoginView());
      default:
        return MaterialPageRoute(builder: (_) => const LoginView());
    }
  }
}
