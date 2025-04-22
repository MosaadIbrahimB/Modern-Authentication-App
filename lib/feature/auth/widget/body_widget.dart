import 'package:flutter/material.dart';
import '../../../core/widget/button_widget.dart';
import 'forgot_password_widget.dart';
import 'password_text_form_field_widget.dart';
import 'text_form_field_widget.dart';
class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 55),
        TextFormFieldWidget(
          controller: TextEditingController(),
          prefixIcon: Icon(Icons.person_outline),
          labelText: "Username",
        ),
        SizedBox(height: 20),
        PasswordFormFieldWidget(
          controller: TextEditingController(),
          prefixIcon: Icon(Icons.lock_outline),
          labelText: "Password",
        ),
        SizedBox(height: 20),
        ForgotPasswordWidget(),
        SizedBox(height: 30),
        ButtonWidget(title:  "LOG IN",),
      ],
    );
  }
}
