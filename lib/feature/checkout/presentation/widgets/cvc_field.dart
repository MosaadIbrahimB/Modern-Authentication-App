import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CVCField extends StatelessWidget {
  final TextEditingController controller;

  const CVCField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      obscureText: true,

      // autovalidateMode: AutovalidateMode.always,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(3),
      ],
      decoration: InputDecoration(
        // labelText: 'CVC',
        hintText: '***',
        border: InputBorder.none,
      ),
      validator: (value) {
        if (value == null || value.length != 3) {
          return 'CVC يجب أن يكون 3 أرقام';
        }
        return null;
      },
    );
  }
}
