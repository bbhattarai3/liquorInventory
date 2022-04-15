class LiquorItem {
  final String itemID;
  final String itemName;
  final String itemImageURL;
  final String distillery;
  final String location;
  final String category;

  double price;
  int size;
  int quantity;

  LiquorItem(this.itemID, this.itemName, this.itemImageURL, this.distillery,
      this.location, this.category, this.price, this.size, this.quantity);
}
