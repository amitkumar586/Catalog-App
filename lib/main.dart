// import 'package:catalot/pages/homepage.dart';
import 'package:catalot/pages/loginpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CatalogApp());
}

class CatalogApp extends StatefulWidget {
  const CatalogApp({super.key});

  @override
  State<CatalogApp> createState() => _CatalogAppState();
}

class _CatalogAppState extends State<CatalogApp> {
  // MyRoutes myroutes = MyRoutes();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        // fontFamily: 'regularText',
      ),
      darkTheme: ThemeData(
          // brightness: Brightness.dark,
          ),
      // initialRoute: RoutesName,
      // onGenerateInitialRoutes: Routes.,
      routes: {
        // '/': (context) => MyHomePage(),
        '/': (context) => LoginPage(),
      },
    );
  }
}
