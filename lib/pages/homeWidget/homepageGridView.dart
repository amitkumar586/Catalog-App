import 'dart:convert';
import 'package:catalog/models/catalog.dart';
import 'package:catalog/pages/homeWidget/catalogHeader.dart';
import 'package:catalog/pages/homeWidget/catalogList.dart';
import 'package:catalog/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

class MyHomePageGridView extends StatefulWidget {
  const MyHomePageGridView({super.key});

  @override
  State<MyHomePageGridView> createState() => _MyHomePageGridViewState();
}

class _MyHomePageGridViewState extends State<MyHomePageGridView> {
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
        body: SafeArea(
          child: Container(
              padding: Vx.m32,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CatalogHeader(),
                  if (CatalogModel.items != null &&
                      CatalogModel.items!.isNotEmpty)
                    const CatalogList().py16().expand()
                  else
                    const Center(
                      child: CircularProgressIndicator(),
                    )
                ],
              )),
        ),
        drawer: const MyDrawer(),
      ),
    );
  }
}
