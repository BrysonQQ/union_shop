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
