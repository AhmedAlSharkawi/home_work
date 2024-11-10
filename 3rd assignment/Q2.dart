class GroceryListManager {
  List<String> _groceries = [];

  void addItem(String item) {
    if (item.isNotEmpty) {
      _groceries.add(item);
      print("Item '$item' added to the grocery list.");
    } else {
      print("Cannot add an empty item.");
    }
  }

  bool removeItem(String item) {
    if (_groceries.contains(item)) {
      _groceries.remove(item);
      print("Item '$item' removed from the grocery list.");
      return true;
    } else {
      print("Item '$item' not found in the grocery list.");
      return false;
    }
  }

  String displayItems({bool showCount = false}) {
    if (_groceries.isEmpty) {
      return "The grocery list is empty.";
    } else {
      String list = "Grocery List:\n" + _groceries.join(', ');
      if (showCount) {
        list += "\nTotal items: ${_groceries.length}";
      }
      return list;
    }
  }
}

void main() {
  GroceryListManager manager = GroceryListManager();

  manager.addItem("Apples");
  manager.addItem("Bread");
  manager.addItem("Milk");

  print(manager.displayItems(showCount: true));

  manager.removeItem("Bread");

  print(manager.displayItems());
}