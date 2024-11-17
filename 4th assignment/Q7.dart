class Product {
  String name;
  double price;
  int quantity;

  Product({required this.name, required this.price, required this.quantity});

  void updateQuantity(int newQuantity) {
    quantity = newQuantity;
  }

  double calculateTotalPrice() {
    return price * quantity;
  }
}

void main() {
  Product product = Product(name: 'Laptop', price: 1200.5, quantity: 10);

  print('Initial Quantity: ${product.quantity}');
  print('Initial Total Price: ${product.calculateTotalPrice()}');

  product.updateQuantity(15); 
  print('Updated Quantity: ${product.quantity}');
  print('Updated Total Price: ${product.calculateTotalPrice()}');
}
