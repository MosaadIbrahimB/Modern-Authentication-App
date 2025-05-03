import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modern_authentication_app/feature/home/presentation/widget/view_basket_widget.dart';
import '../../../../core/utils/app_color.dart';
import '../control/home/home_cubit.dart';
import 'list_item_of_bag_widget.dart';

class BagItemWidget extends StatelessWidget {
  const BagItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return BlocProvider.of<HomeCubit>(context).getView()
            ? SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.green,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  width: MediaQuery.sizeOf(context).width * .95,
                  height: 75,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListItemOfBagWidget(),
                      Container(
                        width: 1,
                        height: MediaQuery.of(context).size.height * .060,
                        color: Colors.white,
                      ),
                      SizedBox(width: 4),
                      ViewBasketWidget(),
                    ],
                  ),
                ),
              ),
            )
            : SizedBox();
      },
    );
  }
}
