import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/main.dart';

void main() {
  group('Home Page Tests', () {
    testWidgets('should display home page with basic elements', (tester) async {
      await tester.pumpWidget(const UnionShopApp());
      await tester.pump();

      // Check that basic UI elements are present
      expect(
        find.text('USUP shop - goodies for Portsmouth students'),
        findsOneWidget,
      );
      expect(find.text('USUP SHOP'), findsOneWidget);
      expect(find.text('Popular Products'), findsOneWidget);
      expect(find.text('BROWSE PRODUCTS'), findsOneWidget);
      expect(find.text('View All'), findsOneWidget);
    });

    testWidgets('should display product cards', (tester) async {
      await tester.pumpWidget(const UnionShopApp());
      await tester.pump();

      // Check that product cards are displayed
      expect(find.text('T-shirt'), findsOneWidget);
      expect(find.text('Bag'), findsOneWidget);
      expect(find.text('WaterBottle'), findsOneWidget);
      expect(find.text('Notebook'), findsOneWidget);

      // Check prices are displayed
      expect(find.text('£18.00'), findsOneWidget);
      expect(find.text('£16.00'), findsOneWidget);
      expect(find.text('£20.00'), findsOneWidget);
      expect(find.text('£8.00'), findsOneWidget);
    });

    testWidgets('should display header icons', (tester) async {
      await tester.pumpWidget(const UnionShopApp());
      await tester.pump();

      // Check that header icons are present
      expect(find.byIcon(Icons.info_outline), findsOneWidget);
      expect(find.byIcon(Icons.search), findsOneWidget);
      expect(find.byIcon(Icons.person_outline), findsOneWidget);
      expect(find.byIcon(Icons.shopping_bag_outlined), findsOneWidget);
      expect(find.byIcon(Icons.menu), findsOneWidget);
    });

    testWidgets('should display footer', (tester) async {
      await tester.pumpWidget(const UnionShopApp());
      await tester.pump();

      // Check that footer is present
      expect(find.text('University of Portsmouth Students Union'), findsOneWidget);
    });
  });
}