import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modern_authentication_app/core/utils/app_text_style.dart';
import 'package:modern_authentication_app/feature/home/presentation/control/home/home_cubit.dart';

import '../../../../core/utils/app_color.dart';
import '../../../home/presentation/widget/list_item_of_bottom_sheet_widget.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCheckOutScreenWidget(),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Column(children: [
            ListItemOfBottomSheetWidget(),
            Container(
              decoration: BoxDecoration(
                color: AppColor.green,
                borderRadius: BorderRadius.circular(18),
              ),
              width: MediaQuery.sizeOf(context).width * .95,
              height: 55,
              child: Center(
                child: Text("Place Order",style: AppTextStyle.inter16BlackW700.copyWith(
                    color: Colors.white
                ),),
              ),
            ),
            SizedBox(height: 10),

          ]);
        },
      ),
    );
  }
}

class AppBarCheckOutScreenWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCheckOutScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      centerTitle: true,
      title: Text("Checkout", style: AppTextStyle.inter16BlackW700),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity,55);
}
