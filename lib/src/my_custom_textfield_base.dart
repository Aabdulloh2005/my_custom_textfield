import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextfield extends StatelessWidget {
  TextEditingController controller;
  Widget? prefixIcon;
  String? hintText;
  TextInputType? keyboardType;
  List<TextInputFormatter>? textInputFormatter;
  Function(String)? onChanged;
  int? maxLength;
  CustomTextfield({
    this.textInputFormatter,
    this.keyboardType,
    super.key,
    required this.controller,
    this.prefixIcon,
    this.hintText,
    this.maxLength,
    this.onChanged,
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
