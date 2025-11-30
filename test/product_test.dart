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

    testWidgets('should display footer', (tester) async {
      binding.window.physicalSizeTestValue = const Size(375, 812);
      binding.window.devicePixelRatioTestValue = 1.0;

      await tester.pumpWidget(createTestWidget());
      await tester.pumpAndSettle();

      expect(find.text('Product Footer'), findsOneWidget);
    });
  });
}
