import 'package:catalog/widgets/themse.dart';
import 'package:flutter/material.dart';

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .28,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: MyTheme.creamColor, borderRadius: BorderRadius.circular(8)),
      child: Image.network(image.toString()),
    );
  }
}
