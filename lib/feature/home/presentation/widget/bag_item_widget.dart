import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modern_authentication_app/core/utils/app_text_style.dart';
import 'package:modern_authentication_app/feature/home/presentation/widget/view_basket_widget.dart';
import '../../../../core/utils/app_color.dart';
import '../../data/repo/repo.dart';
import '../control/home/home_cubit.dart';
import 'custom_badge_widget.dart';
import 'list_item_of_bag_widget.dart';

class BagItemWidget extends StatelessWidget {
  const BagItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return
          BlocProvider.of<HomeCubit>(context).getView()?
          Container(
          decoration: BoxDecoration(
            color: AppColor.green,
            borderRadius: BorderRadius.circular(18),
          ),
          width: double.infinity,
          height: 75,
          child: Row(
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
        ):SizedBox();
      },
    );
  }
}


