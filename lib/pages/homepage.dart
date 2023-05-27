import 'package:catalog/widgets/drawer.dart';
import 'package:flutter/material.dart';
// import 'package:catalot/utilities/widgets/drawer.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Catalog"),
        ),
        body: Container(
          child: Center(
            child: Text("Body Part"),
          ),
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
