// 目的：简单的 ProductPage 烟雾/集成测试。
// 验证页面能够构建并渲染出关键文本（标题、价格）以及 Scaffold。
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/product_page.dart';

void main() {
  testWidgets('ProductPage builds and shows product title and price', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: ProductPage()));
    await tester.pumpAndSettle();

    // Expect Scaffold and product title/price present
    expect(find.byType(Scaffold), findsOneWidget);
    expect(find.text('ITEMS'), findsOneWidget);
    expect(find.text('£15.00'), findsOneWidget);
    expect(find.text('Product Footer'), findsOneWidget);
  });
}
