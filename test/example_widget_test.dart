// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:dsw_2020_demo/ui/example_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('output text with first name', (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: MyWidgetWithDependencies('Ruth'),
      ),
    );

    // Verify the correct text is found.
    expect(find.text('Hello World! My name is Ruth.'), findsOneWidget);
  });
  testWidgets('output text with last name', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: MyWidgetWithDependencies(
          'Ruth',
          optionalLastName: 'Bader Ginsburg',
        ),
      ),
    );

    expect(find.text('My last name is Bader Ginsburg.'), findsOneWidget);
  });
}
