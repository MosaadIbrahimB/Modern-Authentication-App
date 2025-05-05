import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modern_authentication_app/core/utils/app_text_style.dart';
import 'package:modern_authentication_app/feature/home/presentation/control/home/home_cubit.dart';
import '../../../../core/utils/app_color.dart';
import '../../../home/presentation/widget/list_item_of_bottom_sheet_widget.dart';
import '../../../home/presentation/widget/product_list_widget.dart';
import '../../../home/presentation/widget/see_all_widget.dart';
import '../../../home/presentation/widget/text_delivery_widget.dart';
import '../../data/model/add_note_model.dart';
import '../widget/add_note_widget.dart';
import '../widget/app_bar_cart_screen_widget.dart';
import '../widget/go_to_checkout_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCartScreenWidget(),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          List<AddNoteModel> listNote =
              BlocProvider.of<HomeCubit>(context).list;

          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * .50,
                  child: ListItemOfBottomSheetWidget(),
                ),
                SizedBox(height: 10),


                DefaultTextStyle(
                  style: AppTextStyle.inter16BlackW700.copyWith(
                      fontSize: 14
                  ),

                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        "Yaay!! You've got free delivery..",
                        speed: const Duration(milliseconds: 100),
                      ),
                    ],
                    totalRepeatCount: 3,
                    pause: const Duration(milliseconds: 500),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                ),
                SizedBox(height: 10),

                HorizontalLineWidget(),

                SizedBox(height: 10),
                //--------------------- Recommended for you -----------
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SeeAllWidget(title: "Recommended for you"),
                ),
                SizedBox(height: 10),
                ProductListWidget(),
                SizedBox(height: 10),
                //------------------ AddNoteWidget -----------------
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children:
                        listNote
                            .map((e) => AddNoteWidget(addNoteModel: e))
                            .toList(),
                  ),
                ),
                //--------------------------- /checkout -----------------
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/checkout");
                  },
                  child: GoToCheckoutWidget(),
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
