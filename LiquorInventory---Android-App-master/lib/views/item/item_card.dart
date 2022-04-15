import 'package:flutter/material.dart';
import 'package:liquor_inventory/utils/config/palette.dart';
import 'item.dart';

Widget buildLiquorItemCard(BuildContext context, LiquorItem liquorItem) {
  final imageSection = Container(
    constraints: const BoxConstraints.expand(width: 60, height: 60),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(liquorItem.itemImageURL),
        fit: BoxFit.cover,
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
    ),
  );

  final itemDescriptionSection = Column(
    children: <Widget>[
      Text(liquorItem.itemName + "( " + liquorItem.size.toString() + " )"),
      Text(liquorItem.itemID),
      Text(
        "Qty: " +
            liquorItem.quantity.toString() +
            " | \$" +
            liquorItem.price.toString() +
            " | " +
            liquorItem.category,
      ),
    ],
  );

  return GestureDetector(
    onTap: () {
      Navigator.of(context).pushNamed('/item', arguments: liquorItem);
    },
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: 70.0,
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Palette.primaryRed),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: <Widget>[
          imageSection,
          itemDescriptionSection,
        ],
      ),
    ),
  );
}
