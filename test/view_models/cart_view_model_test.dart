// 目的：对 CartViewModel 进行单元测试。
// Purpose: Unit tests for CartViewModel.
// - 验证 addToCart() 会增加 itemCount 并触发监听器。
// - Verify addToCart() increases itemCount and notifies listeners.
// - 验证 clearCart() 会将 itemCount 重置为 0 并触发监听器。
// - Verify clearCart() resets itemCount to 0 and notifies listeners.
// 这些测试关注的是 ViewModel 的状态变化和通知行为，而不是 UI。
// These tests focus on ViewModel state changes and notification behavior, not UI.
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/view_models/cart_view_model.dart';

void main() {
  group('CartViewModel', () {
    test('addToCart increases itemCount and notifies listeners', () {
  // 验证初始值为 0，调用 addToCart 后计数变为 1，且通知监听器
  // Verify initial count is 0; after addToCart the count becomes 1 and listeners are notified
      final vm = CartViewModel();
      var notified = false;
      vm.addListener(() => notified = true);

      expect(vm.itemCount, 0);
      vm.addToCart();
      expect(vm.itemCount, 1);
      expect(notified, true);
    });

    test('clearCart resets itemCount and notifies listeners', () {
  // 在已有条目时，调用 clearCart 应将计数重置为 0 并通知监听器
  // When items exist, calling clearCart should reset the count to 0 and notify listeners
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
