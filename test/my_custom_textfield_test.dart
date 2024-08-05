import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_custom_textfield/my_custom_textfield.dart';

void main() {
  testWidgets('CustomTextfield displays hint text and icon', (WidgetTester tester) async {
    // Arrange
    final hintText = 'Enter text';
    final prefixIcon = Icon(Icons.text_fields);
    final controller = TextEditingController();

    // Act
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CustomTextfield(
            controller: controller,
            hintText: hintText,
            prefixIcon: prefixIcon,
          ),
        ),
      ),
    );

    // Assert
    expect(find.text(hintText), findsOneWidget);
    expect(find.byIcon(Icons.text_fields), findsOneWidget);
  });
}
