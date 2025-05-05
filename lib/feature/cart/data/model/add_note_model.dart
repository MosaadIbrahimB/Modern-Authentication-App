import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_style.dart';

class AddNoteModel {
  final String ?pathImage;
  final String title;
  final Widget widget;

  AddNoteModel({
     this.pathImage,
    required this.title,
    required this.widget,
  });
}
