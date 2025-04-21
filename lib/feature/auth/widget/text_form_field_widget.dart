import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String? labelText;
  final TextEditingController? controller;
  final Widget? prefixIcon;

  const TextFormFieldWidget({
    super.key,
    this.labelText,
    this.controller,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        labelText: labelText,
        fillColor: Colors.grey[200],
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey.shade200,)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
    );
  }
}
