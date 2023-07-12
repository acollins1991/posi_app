import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:posi_app/src/views/home_view.dart';

void main() {
  group('HomeView', () {
    testWidgets('Test homepage renders "I am the home page"',
        (WidgetTester tester) async {
      const widget = MaterialApp(home: HomeView());

      await tester.pumpWidget(widget);

      final textFinder = find.text('I am the home page');

      expect(textFinder, findsOneWidget);
    });
  });
}
