import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme() => ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: 'regular',
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black),
        ),
      );

  //colors
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkBluishColor = const Color(0xff403b58);
}
