import 'package:employees/screen/employe_list_screen/employee_list.dart';
import 'package:employees/screen/login/login.dart';
import 'package:employees/screen/resources/strings_manager.dart';
import 'package:employees/screen/splash/splash.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String mainRoute = "/main";
  static const String employeeDetailsRoute = "/employeeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const EmployeeList());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
            appBar: AppBar(
              title: const Text(AppStrings.noRouteFound),
            ),
            body: const Center(
              child: Text(AppStrings.noRouteFound),
            )));
  }
}
