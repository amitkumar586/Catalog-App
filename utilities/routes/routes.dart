import 'package:catalot/pages/loginpage.dart';
import 'package:flutter/material.dart';

import 'routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.login:
        return MaterialPageRoute(
          builder: (BuildContext context) => LoginPage(),
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
