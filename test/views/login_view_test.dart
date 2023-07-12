import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:posi_app/src/views/login_view.dart';

void main() {
  group('HomeView', () {
    testWidgets('Test login renders "I am the login page"',
        (WidgetTester tester) async {
      const widget = MaterialApp(home: LoginView());

      await tester.pumpWidget(widget);

      final textFinder = find.text('I am the login page');

      expect(textFinder, findsOneWidget);
    });
  });
}
