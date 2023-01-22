import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/screens/detail_screen.dart';
import 'package:flutter_health_care_app/screens/home_page_screen.dart';
import 'package:flutter_health_care_app/screens/splash_screen.dart';
import 'package:flutter_health_care_app/stores.dart';
import 'package:flutter_health_care_app/widgets/custom_route_widget.dart';
import 'package:flutter_health_care_app/login.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoute() {
    return <String, WidgetBuilder>{
      'LoginPage':(_)=> Mylogin(),
      '/HomePage': (_) => HomePageScreen(),
      'store':(_)=> Stores(),
    };
  }

  static Route onGenerateRoute(RouteSettings settings) {
    final List<String> pathElements = settings.name.split('/');
    if (pathElements[0] != '' || pathElements.length == 1) {
      return null;
    }
    switch (pathElements[1]) {
      case "DetailPage":
        return CustomRoute<bool>(
          builder: (BuildContext context) => DetailScreen(
            model: settings.arguments,
          ),
        );
    }
  }
}
