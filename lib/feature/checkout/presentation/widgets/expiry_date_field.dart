import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExpiryDateField extends StatelessWidget {
  final TextEditingController controller;

  const ExpiryDateField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      // autovalidateMode: AutovalidateMode.always,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(4),
        ExpiryDateFormatter(),
      ],
      decoration: InputDecoration(
        // labelText: 'Expiry Date',
        hintText: 'MM/YY',
        border: InputBorder.none,
      ),
      validator: (value) {
        if (value == null || !RegExp(r'^\d{2}/\d{2}$').hasMatch(value)) {
          return 'ادخل التاريخ بصيغة MM/YY';
        }
        return null;
      },
    );
  }
}

class ExpiryDateFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue,
      TextEditingValue newValue,
      ) {
    var text = newValue.text.replaceAll(RegExp(r'[^0-9]'), '');
    if (text.length > 4) text = text.substring(0, 4);

    final buffer = StringBuffer();
    for (int i = 0; i < text.length; i++) {
      if (i == 2) buffer.write('/');
      buffer.write(text[i]);
    }

    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.length),
    );
  }
}