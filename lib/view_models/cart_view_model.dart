import 'package:flutter/material.dart';
import '../repositories/cart_repository.dart';

class CartViewModel with ChangeNotifier {
  final CartRepository _repository = CartRepository();


  int get itemCount => _repository.itemCount;

  void addToCart() {
  _repository.addItem();
  notifyListeners();
}

  void clearCart() {
    _repository.clear();
    notifyListeners();
  }

  void showAddToCartMessage(BuildContext context, String productName) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$productName added to cart!'),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}