import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_text_style.dart';
import '../control/home/home_cubit.dart';
class ViewBasketWidget extends StatelessWidget {
  const ViewBasketWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int count=BlocProvider.of<HomeCubit>(context).calcItemInBasket();
    return Row(
      children: [
        Text(
          "View Basket",
          style: AppTextStyle.inter16BlackW700.copyWith(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        SizedBox(width: MediaQuery.sizeOf(context).width * .03),
        count!=0?
        badges.Badge(
          position:badges. BadgePosition.topEnd(top: -25,end: 7),
          badgeContent: Text(
            "$count",
            style: TextStyle(fontSize: 18,color: Colors.white),
          ),
          child: SvgPicture.asset(
            "assets/images/fruit/bage.svg",
            width: 25,
            color: Colors.white,
          ),
        ): SvgPicture.asset(
          "assets/images/fruit/bage.svg",
          width: 25,
          color: Colors.white,
        )
        ,
      ],
    );
  }
}
