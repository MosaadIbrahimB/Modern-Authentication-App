import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modern_authentication_app/feature/cart/data/model/add_note_model.dart';
import 'package:modern_authentication_app/feature/cart/presentation/widget/add_note_widget.dart';
import 'package:modern_authentication_app/feature/payment/presentation/widget/app_bar_payment_screen_widget.dart';

import '../logic/pyment_cubit.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PaymentCubit(),
      child: Scaffold(
        appBar: AppBaPaymentScreenWidget(),
        body: BlocBuilder<PaymentCubit, PaymentState>(
          builder: (context, state) {
            var cubit = BlocProvider.of<PaymentCubit>(context);
            return Column(
              children: [
                AddNoteWidget(
                  addNoteModel: AddNoteModel(
                    pathImage: "assets/images/checkout/apple_pay.png",
                    title: "Apple Pay",
                    widget: Radio<int>(
                      activeColor: Colors.blue,
                      value: 1,
                      groupValue: cubit.selectPay(),
                      onChanged: (value) {
                        cubit.changeSelectPay(value: value);
                      },
                    ),
                  ),
                ),
                AddNoteWidget(
                  addNoteModel: AddNoteModel(
                    pathImage: "assets/images/checkout/card.png",
                    title: "Pay with card",
                    widget: Radio<int>(
                      activeColor: Colors.blue,
                      value: 2,
                      groupValue: cubit.selectPay(),
                      onChanged: (value) {
                        cubit.changeSelectPay(value: value);
                      },
                    ),
                  ),
                ),

              ],
            );
          },
        ),
      ),
    );
  }
}
