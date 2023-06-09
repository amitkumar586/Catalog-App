import 'dart:convert';

import 'package:catalog/models/catalog.dart';
import 'package:catalog/widgets/drawer.dart';
import 'package:catalog/widgets/itemwidgeg.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:catalot/utilities/widgets/drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();

    loadData();
  }

  // data load in file
  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    // get data from json
    var catalogjson = await rootBundle.loadString('assets/files/catalog.json');

    // decode json encoded data
    var decodeData = jsonDecode(catalogjson);

    // get data frm map using key
    final productsData = decodeData['products'];

    CatalogModel.items =
        List.from(productsData).map((e) => Items.fromMap(e)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text("Catalog"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
              ? ListView.builder(
                  itemCount: CatalogModel.items!.length,
                  itemBuilder: (context, index) {
                    return ItemWidget(item: CatalogModel.items![index]);
                  },
                )
              : const Center(
                  child: CircularProgressIndicator(),
                ),
        ),
        drawer: const MyDrawer(),
      ),
    );
  }
}
