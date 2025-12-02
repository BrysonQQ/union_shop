// 目的：对 ProductPage 的 widget 测试。
// - 验证页面在移动端尺寸下正确渲染关键元素（标题、价格、描述）。
// - 验证 header 上的图标存在（search、bag、menu）。
// - 验证底部 footer 文本存在。
// 这些测试是对 UI 关键组成部分的集成式断言（不涉及网络请求）。
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/product_page.dart';

void main() {
  tearDown(() {
    final binding = TestWidgetsFlutterBinding.ensureInitialized();
    binding.window.clearPhysicalSizeTestValue();
    binding.window.clearDevicePixelRatioTestValue();
  });

  final binding = TestWidgetsFlutterBinding.ensureInitialized();

  Widget createTestWidget() {
    return const MaterialApp(home: ProductPage());
  }

  group('Product Page Tests', () {
    // 检查主要 UI 元素是否存在：标题、价格、描述
    testWidgets('should display product page with basic elements', (tester) async {
      binding.window.physicalSizeTestValue = const Size(375, 812);
      binding.window.devicePixelRatioTestValue = 1.0;

      await tester.pumpWidget(createTestWidget());
      await tester.pumpAndSettle();

      // Check that basic UI elements are present
      expect(find.text('ITEMS'), findsOneWidget);
      expect(find.text('£15.00'), findsOneWidget);
      expect(find.text('Description'), findsOneWidget);
    });

  // 检查 header 上的常用图标是否渲染
  testWidgets('should display header icons', (tester) async {
      binding.window.physicalSizeTestValue = const Size(375, 812);
      binding.window.devicePixelRatioTestValue = 1.0;

      await tester.pumpWidget(createTestWidget());
      await tester.pumpAndSettle();

      // Check that header icons are present
      expect(find.byIcon(Icons.search), findsOneWidget);
      expect(find.byIcon(Icons.shopping_bag_outlined), findsOneWidget);
      expect(find.byIcon(Icons.menu), findsOneWidget);
    });

  // 检查页面底部的 footer 文本是否可见
  testWidgets('should display footer', (tester) async {
      binding.window.physicalSizeTestValue = const Size(375, 812);
      binding.window.devicePixelRatioTestValue = 1.0;

      await tester.pumpWidget(createTestWidget());
      await tester.pumpAndSettle();

      expect(find.text('Product Footer'), findsOneWidget);
    });
  });
}
