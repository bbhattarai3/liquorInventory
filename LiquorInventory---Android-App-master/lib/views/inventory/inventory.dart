import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquor_inventory/views/item/item_card.dart';
import 'package:liquor_inventory/utils/dummy_data.dart';
import 'package:liquor_inventory/utils/common.dart';

class InventoryPage extends StatefulWidget {
  @override
  _InventoryPageState createState() => _InventoryPageState();
}

class _InventoryPageState extends State<InventoryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        mainAppBar(context, "Inventory"),
        allInventoryItems(),
      ],
    );
  }

  Widget allInventoryItems() {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: newlyAddedItems
            .map((liquorItem) => buildLiquorItemCard(context, liquorItem))
            .toList(),
      ),
    );
  }
}
