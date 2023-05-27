import 'package:catalog/pages/homepage.dart';
import 'package:catalog/pages/loginpage.dart';
import 'package:flutter/material.dart';

import 'routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => LoginPage());

      case RoutesName.home:
        return MaterialPageRoute(
          builder: (BuildContext context) => MyHomePage(),
        );

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text("No Route define"),
            ),
          );
        });
    }
  }
}
