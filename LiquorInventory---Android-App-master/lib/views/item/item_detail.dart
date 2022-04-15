import 'package:flutter/material.dart';
import 'package:liquor_inventory/utils/common.dart';
import 'package:liquor_inventory/utils/config/palette.dart';
import 'package:liquor_inventory/views/item/item.dart';

Widget singleDetail(String itemDetailName, String itemDetailValue,
    {TextAlign align = TextAlign.left}) {
  return Column(
    children: [
      Text(
        itemDetailName,
        textAlign: align,
        style: const TextStyle(fontSize: 12, color: Colors.black),
      ),
      Text(
        itemDetailValue,
        textAlign: align,
        style: const TextStyle(fontSize: 24, color: Palette.primaryRed),
      ),
    ],
  );
}

class ItemDetailPage extends StatefulWidget {
  final LiquorItem liquorItem;

  const ItemDetailPage(
      {Key key = const Key("placeholder key"), required this.liquorItem})
      : super(key: key);

  @override
  _ItemDetailPageState createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(context, "Item: " + widget.liquorItem.itemName),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          imageContainer(widget.liquorItem.itemImageURL, 150, 150),
          itemDetails(),
        ],
      ),
    );
  }

  Widget itemDetails() {
    return Column(children: [
      Row(
        children: [
          singleDetail(
            "Size",
            widget.liquorItem.size.toString() + "ml",
          ),
          singleDetail(
            "Quantity",
            widget.liquorItem.quantity.toString(),
            align: TextAlign.center,
          ),
          singleDetail(
            "Price",
            "\$" + widget.liquorItem.price.toString(),
            align: TextAlign.right,
          )
        ],
      ),
      singleDetail(
        "Category",
        widget.liquorItem.category,
      ),
      singleDetail(
        "Distillery",
        widget.liquorItem.distillery,
      ),
      singleDetail(
        "Location",
        widget.liquorItem.location,
      ),
    ]);
  }
}
