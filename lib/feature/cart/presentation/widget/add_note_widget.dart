import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_style.dart';
import '../../data/model/add_note_model.dart';

class AddNoteWidget extends StatelessWidget {
  const AddNoteWidget({super.key, required this.addNoteModel});

  final AddNoteModel addNoteModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                height: 25,
                width: 25,
                child:
                addNoteModel.pathImage == null
                    ? SizedBox()
                    : Image.asset(addNoteModel.pathImage!),
              ),
              SizedBox(width:   addNoteModel.pathImage == null?0:10),
              SizedBox(
                // width: MediaQuery.sizeOf(context).width *.50,
                child: FittedBox(
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                    addNoteModel.title,
                    style: AppTextStyle.inter16BlackW700.copyWith(fontSize: 14),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 20,
            height: 20,
            // color: Colors.red,
            alignment: AlignmentDirectional.center,
            child: addNoteModel.widget,
          ),
        ],
      ),
    );
  }
}
