import 'package:catalog/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Items? item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {},
        leading: Image.network(item!.image.toString()),
        title: Text(item!.name!.toString()),
        subtitle: Text(item!.desc.toString()),
        trailing: Text("\u{20B9}${item!.price!.toString()}"),
      ),
    );
  }
}
