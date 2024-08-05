# My Custom Textfield

A custom textfield widget for Flutter.

## Usage

```dart
import 'package:my_custom_textfield/my_custom_textfield.dart';

CustomTextfield(
  controller: TextEditingController(),
  hintText: 'Enter text',
  prefixIcon: Icon(Icons.text_fields),
  keyboardType: TextInputType.text,
  maxLength: 20,
  onChanged: (value) {
    print('Text changed: $value');
  },
);

```
```
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A custom text field widget for Flutter.
///
/// The [CustomTextfield] widget allows for a variety of customizations,
/// including prefix icons, hint text, keyboard types, input formatters, and
/// a maximum character length. It is designed to be flexible and easy to use
/// in different parts of your application.
class CustomTextfield extends StatelessWidget {
  /// The controller for the text field.
  ///
  /// This controls the text being edited. If null, this widget will create
  /// its own [TextEditingController].
  final TextEditingController controller;

  /// An optional widget to display before the text field.
  ///
  /// Typically an [Icon].
  final Widget? prefixIcon;

  /// Text that suggests what sort of input the field accepts.
  ///
  /// Displayed when the field is empty and not focused.
  final String? hintText;

  /// The type of keyboard to use for editing the text.
  ///
  /// Defaults to a text keyboard.
  final TextInputType? keyboardType;

  /// A list of input formatters to apply to the text field.
  ///
  /// Formatters are applied in the order in the list.
  final List<TextInputFormatter>? textInputFormatter;

  /// Called when the text being edited changes.
  ///
  /// The value is the current text.
  final Function(String)? onChanged;

  /// The maximum number of characters (Unicode grapheme clusters) to allow.
  ///
  /// If this is null, there is no limit to the number of characters.
  final int? maxLength;

  /// Creates a [CustomTextfield].
  ///
  /// All parameters are optional except [controller], which must be provided.
  CustomTextfield({
    super.key,
    required this.controller,
    this.prefixIcon,
    this.hintText,
    this.keyboardType,
    this.textInputFormatter,
    this.onChanged,
    this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: maxLength,
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText,
        counterText: '',
        hintStyle: const TextStyle(color: Colors.grey),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
      inputFormatters: textInputFormatter,
      keyboardType: keyboardType,
    );
  }
}
```