import 'package:flutter/material.dart';
import 'package:modern_authentication_app/feature/auth/widget/password_text_form_field_widget.dart';
import 'package:modern_authentication_app/feature/auth/widget/s_z_box_h25_widget.dart';
import 'package:modern_authentication_app/feature/auth/widget/text_form_field_widget.dart';
import '../../../core/widget/button_widget.dart';
class BodySignWidget extends StatelessWidget {
  const BodySignWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),
        TextFormFieldWidget(
          controller: TextEditingController(),
          prefixIcon: Icon(Icons.person_outline),
          labelText: "First Name",
        ),
        SZBoxH25Widget(),
        TextFormFieldWidget(
          controller: TextEditingController(),
          prefixIcon: Icon(Icons.person_outline),
          labelText: "Last Name",
        ),
        SZBoxH25Widget(),
        TextFormFieldWidget(
          controller: TextEditingController(),
          prefixIcon: Icon(Icons.person_outline),
          labelText: "User name",
        ),
        SZBoxH25Widget(),
        PasswordFormFieldWidget(
          controller: TextEditingController(),
          prefixIcon: Icon(Icons.lock_outline),
          labelText: "Password",
        ),
        SZBoxH25Widget(),
        PasswordFormFieldWidget(
          controller: TextEditingController(),
          prefixIcon: Icon(Icons.lock_outline),
          labelText: "Confirm Password",
        ),
        SZBoxH25Widget(),
        ButtonWidget(title: "CREATE"),
      ],
    );
  }
}
