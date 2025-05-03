import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modern_authentication_app/core/utils/app_text_style.dart';
import 'package:modern_authentication_app/feature/home/presentation/control/home/home_cubit.dart';

import '../../../home/presentation/widget/list_item_of_bottom_sheet_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Column(children: [ListItemOfBottomSheetWidget()]);
        },
      ),
    );
  }
}
