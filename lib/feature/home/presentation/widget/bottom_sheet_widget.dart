import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modern_authentication_app/core/utils/app_text_style.dart';
import 'package:modern_authentication_app/feature/home/presentation/widget/text_basket_view_and_icon_basket_widget.dart';
import '../../../../core/utils/app_color.dart';
import '../control/home/home_cubit.dart';
import 'list_item_of_bottom_sheet_widget.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Container(
          color: Colors.white,
          height: 600,
          child: Column(
            children: [
              //Border Top
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: width * 0.42,
                  vertical: 5,
                ),
                height: 5,
                decoration: BoxDecoration(color: Color(0xffd9d9d9)),
              ),
              ListItemOfBottomSheetWidget(),
Text("You are \$3.50 away from free delivery"
,style: AppTextStyle.inter16BlackW700,
),
              SizedBox(height: 8),
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffECECEC),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    width: MediaQuery.sizeOf(context).width * .95,
                    height: 8,

                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.green,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    width: MediaQuery.sizeOf(context).width * .65,
                    height: 8,

                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: AppColor.green,
                  borderRadius: BorderRadius.circular(18),
                ),
                width: MediaQuery.sizeOf(context).width * .95,
                height: 65,
                child: Container(
                  alignment: AlignmentDirectional.center,
                  child: TextBasketViewAndIconBasketWidget(
                    goToCheck: true,
                    title: "Go to Cart",
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),

          //
          // SingleChildScrollView(
          //   child: Column(
          //     children:
          //         Repo.bagProduct
          //             .map(
          //               (e) => ListTile(
          //                 leading: Container(
          //                   decoration: BoxDecoration(
          //                   color: Colors.grey.shade100,
          //                     borderRadius: BorderRadius.circular(12),
          //                     image:  DecorationImage(
          //                             image: AssetImage(e.image),
          //                             // fit: BoxFit.fill,
          //                           )
          //                         ,
          //                   ),
          //                   child: Image.asset(e.image),
          //                 ),
          //                 title: Text(
          //                   e.title,
          //                   style: AppTextStyle.inter16BlackW700,
          //                 ),
          //                 subtitle: Text(
          //                   "\$${e.price}",
          //                   style: AppTextStyle.inter16BlackW700.copyWith(
          //                     fontSize: 14,
          //                     color: Colors.black54,
          //                   ),
          //                 ),
          //                 trailing: SizedBox(
          //                   width: 100,
          //                   child: Row(
          //                     children: [
          //                       IconSubItemWidget(productModel: e),
          //                       SizedBox(width: 10),
          //                       Text(
          //                         "${e.count ?? 0}",
          //                         style: AppTextStyle.inter16BlackW700,
          //                       ),
          //                       SizedBox(width: 10),
          //                       IconAddItemWidget(productModel: e),
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //             )
          //             .toList(),
          //   ),
          // ),
        );
      },
    );
  }
}

