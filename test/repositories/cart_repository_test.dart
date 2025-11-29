import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/repositories/cart_repository.dart';

void main() {
  group('CartRepository', () {
    test('initial item count should be 0', () {
      final repository = CartRepository();
      expect(repository.itemCount, 0);
    });

    test('addItem should increase item count by 1', () {
      final repository = CartRepository();
      repository.addItem();
      expect(repository.itemCount, 1);
    });

    test('clear should reset item count to 0', () {
      final repository = CartRepository();
      repository.addItem(); 
      repository.clear();  
      expect(repository.itemCount, 0);
    });
  });
}