import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modern_authentication_app/core/utils/app_text_style.dart';
import 'package:modern_authentication_app/feature/home/presentation/control/home/home_cubit.dart';

import '../../../../core/utils/app_color.dart';
import '../../../home/presentation/widget/list_item_of_bottom_sheet_widget.dart';
import '../../../home/presentation/widget/product_list_widget.dart';
import '../../../home/presentation/widget/see_all_widget.dart';
import '../../../home/presentation/widget/text_delivery_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCartScreenWidget(),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * .50,
                  child: ListItemOfBottomSheetWidget(),
                ),
                SizedBox(height: 10),
                TextDeliveryWidget(),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SeeAllWidget(title: "Recommended for you"),
                ),
                SizedBox(height: 10),
                ProductListWidget(),
                SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children:
                        AddNoteModel.listNote
                            .map((e) => AddNoteWidget(addNoteModel: e))
                            .toList(),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/checkout");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColor.green,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    width: MediaQuery.sizeOf(context).width * .95,
                    height: 55,
                    child: Center(
                      child: Text(
                        "Go to checkout",
                        style: AppTextStyle.inter16BlackW700.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          );
        },
      ),
    );
  }
}

class AppBarCartScreenWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const AppBarCartScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text("Cart", style: AppTextStyle.inter16BlackW700),
      actions: [
        SizedBox(
          height: 22,
          width: 22,
          child: Image.asset("assets/images/order.png"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Orders",
            style: AppTextStyle.inter16BlackW700.copyWith(
              // fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 55);
}

class AddNoteWidget extends StatelessWidget {
  const AddNoteWidget({super.key, required this.addNoteModel});

  final AddNoteModel addNoteModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
      child: Row(
        children: [
          SizedBox(
            height: 22,
            width: 22,
            child: Image.asset(addNoteModel.pathImage),
          ),
          SizedBox(width: 10),
          Text(
            addNoteModel.title,
            style: AppTextStyle.inter16BlackW700.copyWith(fontSize: 14),
          ),
          Spacer(),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            width: 100,
            child: addNoteModel.widget,
          ),
        ],
      ),
    );
  }
}

class AddNoteModel {
  final String pathImage;
  final String title;
  final Widget widget;

  AddNoteModel({
    required this.pathImage,
    required this.title,
    required this.widget,
  });

  static List<AddNoteModel> listNote = [
    AddNoteModel(
      pathImage: "assets/images/icon_add_note.png",
      title: "Add Note",
      widget: Icon(Icons.arrow_forward_ios),
    ),
    AddNoteModel(
      pathImage: "assets/images/icon_send_gift.png",
      title: "Send as gift",
      widget: Icon(Icons.arrow_forward_ios),
    ),
    AddNoteModel(
      pathImage: "assets/images/motocycle.png",
      title: "Delivery",
      widget: Text("\$3.5",style: AppTextStyle.inter16BlackW700,),
    ),
    AddNoteModel(
      pathImage: "assets/images/icon_total.png",
      title: "Delivery",
      widget: Text("\$40.66",style: AppTextStyle.inter16BlackW700,),
    ),
  ];
}
