import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:waterpercent/src/waterpercent.dart';

void main() {
  // A group of tests for WaterWave widget
  group('WaterWave Widget Tests', () {
    // Test 1: WaterWave builds correctly
    testWidgets('WaterWave builds with correct percentage text', (WidgetTester tester) async {
      // Define the test widget to be tested
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: WaterWave(
            size: 100.0,
            percent: 0.5,
            color: Colors.blue,
            percentStyle: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ));

      // Create the Finders
      final textFinder = find.text('50 %');
      final containerFinder = find.byType(Container);

      // Use the `findsOneWidget` matcher provided by flutter_test to verify
      // that the Text widget with '50 %' and the Container widget exist exactly once in the widget tree.
      expect(textFinder, findsOneWidget);
      expect(containerFinder, findsWidgets); // Checks if Container widgets are found

      // Additional tests can be added here to verify other aspects like the color and size.
    });

  });
}
