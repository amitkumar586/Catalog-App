import 'package:catalog/models/catalog.dart';
import 'package:catalog/pages/homeWidget/catalogImages.dart';
import 'package:catalog/widgets/themse.dart';
import 'package:flutter/material.dart';

class CatalogItem extends StatelessWidget {
  final Items catalog;

  const CatalogItem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: const EdgeInsets.only(top: 5),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8)),
        height: MediaQuery.of(context).size.height * .145,
        child: Row(
          children: [
            CatalogImage(image: catalog.image.toString()),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      catalog.name.toString(),
                      style:
                          const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      catalog.desc.toString(),
                      style:
                          const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\u{20B9}${catalog.price!.toString()}',
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    MyTheme.darkBluishColor),
                                shape:
                                    MaterialStateProperty.all(const StadiumBorder())),
                            child: const Text(
                              "Buy",
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
