import 'package:flutter/material.dart';
import 'package:my_custom_textfield/my_custom_textfield.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Custom Textfield Example')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomTextfield(
            controller: TextEditingController(),
            hintText: 'Enter text',
            prefixIcon: Icon(Icons.text_fields),
            keyboardType: TextInputType.text,
            maxLength: 20,
            onChanged: (value) {
              print('Text changed: $value');
            },
          ),
        ),
      ),
    );
  }
}
