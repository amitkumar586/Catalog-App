import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future getDrawer() async {
    // MyDrawer.mydrawer();
  }

  // @override
  // void setState(VoidCallback fn) {
  //   super.setState(fn);
  // }

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
        drawer: Drawer(),
      ),
    );
  }
}
