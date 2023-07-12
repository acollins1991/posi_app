import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:posi_app/src/layouts/main.dart';

void main() {
  group('Main Layout', () {
    testWidgets('Test children render, check for specific text widget',
        (WidgetTester tester) async {
      const textWidget = Text(
        'I am text',
        textDirection: TextDirection.ltr,
      );
      // Define a Widget
      const widget = MaterialApp(
          home: MainLayout(
        children: [textWidget],
      ));

      // Build myWidget and trigger a frame.
      await tester.pumpWidget(widget);

      // Verify myWidget shows some text
      expect(find.byWidget(textWidget), findsOneWidget);
    });
  });
}
