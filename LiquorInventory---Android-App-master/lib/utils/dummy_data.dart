import 'package:liquor_inventory/views/item/item.dart';

List<LiquorItem> newlyAddedItems = <LiquorItem>[
  LiquorItem("0", "Coca Cola", "assets/images/coca-cola.jpg", "Coke Factory",
      "Top Shelf", "Soft Drink", 1.0, 100, 50),
  LiquorItem("0", "Coca Cola", "assets/images/coca-cola.jpg", "Coke Factory",
      "Top Shelf", "Soft Drink", 1.0, 100, 50),
  LiquorItem("0", "Coca Cola", "assets/images/coca-cola.jpg", "Coke Factory",
      "Top Shelf", "Soft Drink", 1.0, 100, 50),
  LiquorItem("0", "Coca Cola", "assets/images/coca-cola.jpg", "Coke Factory",
      "Top Shelf", "Soft Drink", 1.0, 100, 50),
  LiquorItem("0", "Coca Cola", "assets/images/coca-cola.jpg", "Coke Factory",
      "Top Shelf", "Soft Drink", 1.0, 100, 50),
  LiquorItem("0", "Coca Cola", "assets/images/coca-cola.jpg", "Coke Factory",
      "Top Shelf", "Soft Drink", 1.0, 100, 50),
];

class ItemHistory {
  final String transactionDate;
  final String itemID;
  final String itemName;
  final int transactionQty;

  ItemHistory(
      this.transactionDate, this.itemID, this.itemName, this.transactionQty);
}

List<ItemHistory> salesHistory = [
  ItemHistory("2020-02-24", "0", "Coca Cola", 10),
  ItemHistory("2020-01-24", "0", "Coca Cola", 5),
  ItemHistory("2021-02-24", "0", "Coca Cola", 6),
  ItemHistory("2022-02-24", "0", "Coca Cola", 20),
];

List<ItemHistory> additionHistory = [
  ItemHistory("2020-02-24", "0", "Coca Cola", 10),
  ItemHistory("2020-01-24", "0", "Coca Cola", 5),
  ItemHistory("2021-02-24", "0", "Coca Cola", 6),
  ItemHistory("2022-02-24", "0", "Coca Cola", 20),
];
