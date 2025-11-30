import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/view_models/cart_view_model.dart';

void main() {
  group('CartViewModel', () {
    test('addToCart increases itemCount and notifies listeners', () {
      final vm = CartViewModel();
      var notified = false;
      vm.addListener(() => notified = true);

      expect(vm.itemCount, 0);
      vm.addToCart();
      expect(vm.itemCount, 1);
      expect(notified, true);
    });

    test('clearCart resets itemCount and notifies listeners', () {
      final vm = CartViewModel();
      var notified = false;
      vm.addListener(() => notified = true);

      vm.addToCart();
      expect(vm.itemCount, 1);

      vm.clearCart();
      expect(vm.itemCount, 0);
      expect(notified, true);
    });
  });
}
