import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modern_authentication_app/feature/cart/data/model/add_note_model.dart';
import 'package:modern_authentication_app/feature/home/presentation/control/home/home_cubit.dart';

import '../../../home/data/repo/repo.dart';
import '../widgets/app_bar_check_out_screen_widget.dart';
import '../widgets/button_green_widget.dart';
import '../widgets/details_widget.dart';

class CheckOutScreen extends StatelessWidget {
  CheckOutScreen({super.key});



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
                  DetailsWidget(title: "Details", list: Repo.detailList),
                  SizedBox(height: 20),
                  DetailsWidget(title: "Address", list: Repo.addressList),
                  SizedBox(height: 20),
                  DetailsWidget(title: "Have Coupon ?", list: Repo.haveCouponList),
                  SizedBox(height: 20),
                  DetailsWidget(title: "Delivery ", list: Repo.deliveryList),
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
                  ButtonGreenWidget(onTap: (){
                    Navigator.pushNamed(context, "/payment");
                  },),
                  SizedBox(height: 20),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

