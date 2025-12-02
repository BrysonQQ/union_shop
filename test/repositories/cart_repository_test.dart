// 目的：对 CartRepository 的基本行为进行单元测试。
// Purpose: Unit tests for the CartRepository basic behavior.
// - 验证初始 itemCount 为 0。
// - Verify the initial itemCount is 0.
// - 验证 addItem() 会将计数加 1。
// - Verify addItem() increases the count by 1.
// - 验证 clear() 会重置计数为 0。
// - Verify clear() resets the count to 0.
// 这些测试确保仓库层的核心状态逻辑正确。
// These tests ensure the repository layer's core state logic is correct.
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