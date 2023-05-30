// import 'package:catalot/pages/homepage.dart';
import 'package:catalog/pages/homeWidget/homepageGridView.dart';
import 'package:catalog/widgets/themse.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CatalogApp());
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
      theme: MyTheme.lightTheme(),
      darkTheme: ThemeData(
          // brightness: Brightness.dark,
          ),
      // initialRoute: RoutesName.login,
      // onGenerateRoute: Routes.generateRoute,
      home: const MyHomePageGridView(),
    );
  }
}
