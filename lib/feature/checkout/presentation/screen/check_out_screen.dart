import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modern_authentication_app/core/utils/app_text_style.dart';
import 'package:modern_authentication_app/feature/cart/data/model/add_note_model.dart';
import 'package:modern_authentication_app/feature/home/presentation/control/home/home_cubit.dart';
import '../../../../core/utils/app_color.dart';
import '../../../cart/presentation/widget/add_note_widget.dart';
import '../widgets/app_bar_check_out_screen_widget.dart';
import '../widgets/button_green_widget.dart';
import '../widgets/details_widget.dart';

class CheckOutScreen extends StatelessWidget {
  CheckOutScreen({super.key});

  final List<AddNoteModel> detailList = [
    AddNoteModel(
      pathImage: "assets/images/checkout/person.png",
      title: "Kinglsey Ezechukwu",
      widget: Icon(Icons.arrow_forward_ios, size: 22),
    ),
    AddNoteModel(
      pathImage: "assets/images/checkout/telephon.png",
      title: "+44665512120",
      widget: Icon(Icons.arrow_forward_ios, size: 22),
    ),
  ];
  final List<AddNoteModel> addressList = [
    AddNoteModel(
      pathImage: "assets/images/checkout/location.png",
      title: "Apartment 609 \n45 Soho Loop street birmingham",
      widget: Icon(Icons.arrow_forward_ios, size: 22),
    ),
  ];
  final List<AddNoteModel> haveCouponList = [
    AddNoteModel(
      pathImage: "assets/images/checkout/coupon.png",
      title: "Apply Coupon",
      widget: Icon(Icons.arrow_forward_ios, size: 22),
    ),
  ];
  final List<AddNoteModel> deliveryList = [
    AddNoteModel(
      pathImage: "assets/images/checkout/priority.png",
      title: "Priority  (10 -20 mins)",
      widget: Icon(
        Icons.radio_button_checked_sharp,
        color: Colors.green,
        size: 22,
      ),
    ),
    AddNoteModel(
      pathImage: "assets/images/checkout/stander.png",
      title: "Standard  (30 -45 mins)",
      widget: Icon(Icons.radio_button_off, size: 22),
    ),
    AddNoteModel(
      pathImage: "assets/images/checkout/scudel.png",
      title: "Schedule  (30 -45 mins)",
      widget: Icon(Icons.arrow_forward_ios, size: 22),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCheckOutScreenWidget(),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          int item = BlocProvider.of<HomeCubit>(context).calcItemInBasket();
          HomeCubit cubit = BlocProvider.of<HomeCubit>(context);
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DetailsWidget(title: "Details", list: detailList),
                  SizedBox(height: 20),
                  DetailsWidget(title: "Address", list: addressList),
                  SizedBox(height: 20),
                  DetailsWidget(title: "Have Coupon ?", list: haveCouponList),
                  SizedBox(height: 20),
                  DetailsWidget(title: "Delivery ", list: deliveryList),
                  SizedBox(height: 20),
                  DetailsWidget(
                    title: "Order Summary ( $item items)",
                    list: cubit.orderSummaryList,
                  ),
                  SizedBox(height: 20),
                  DetailsWidget(
                    title: "Payment method",
                    list: [
                      AddNoteModel(
                        pathImage: "assets/images/checkout/apple_pay.png",
                        title: "Apple Pay",
                        widget: Icon(Icons.arrow_forward_ios, size: 22),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ButtonGreenWidget(onTap: (){},),
                  SizedBox(height: 10),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

