import 'package:catalog/models/catalog.dart';
import 'package:catalog/pages/homeWidget/catalogItem.dart';
import 'package:catalog/pages/homeWidget/homedetailpage.dart';
import 'package:flutter/material.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items!.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items![index];
        return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeDttailPage(catalog: catalog),
                  ));
            },
            child: CatalogItem(catalog: catalog));
      },
    );
  }
}
