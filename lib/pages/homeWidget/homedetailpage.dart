import 'package:catalog/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDttailPage extends StatelessWidget {
  final Items catalog;
  const HomeDttailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * .4,
              child: Image.network(catalog.image.toString())),
          Expanded(
              child: VxArc(
            height: 30,
            arcType: VxArcType.convey,
            edge: VxEdge.top,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: [
                    Text(
                      catalog.name.toString(),
                      style: const TextStyle(fontSize: 35, color: Colors.black),
                    ),
                    Text(
                      catalog.desc.toString(),
                      style: const TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
