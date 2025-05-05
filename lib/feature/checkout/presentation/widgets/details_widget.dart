import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_style.dart';
import '../../../cart/data/model/add_note_model.dart';
import '../../../cart/presentation/widget/add_note_widget.dart';
class DetailsWidget extends StatelessWidget {
  const DetailsWidget({super.key, required this.list, required this.title});

  final List<AddNoteModel> list;

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTextStyle.inter16BlackW700),
        SizedBox(height: 10),
        Column(
          children: list.map((e) => AddNoteWidget(addNoteModel: e)).toList(),
        ),
      ],
    );
  }
}
