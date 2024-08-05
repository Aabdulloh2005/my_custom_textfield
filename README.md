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
