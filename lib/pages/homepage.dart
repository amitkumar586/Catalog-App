import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Catalog"),
        ),
        body: Container(
          child: Center(
            child: Text("Body Part"),
          ),
        ),
        drawer: Drawer(),
      ),
    );
  }
}
