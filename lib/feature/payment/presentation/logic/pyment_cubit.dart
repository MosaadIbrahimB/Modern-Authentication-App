import 'package:bloc/bloc.dart';

class PaymentCubit extends Cubit<PaymentState>{
  PaymentCubit():super(PaymentInitialState());

  int _selectPay=1;
   selectPay()=>_selectPay;

  changeSelectPay({int? value}){
    _selectPay=value??1;
    emit(PaymentSelectState());
  }
}




class PaymentState{}
class PaymentInitialState extends PaymentState{}
class PaymentSelectState extends PaymentState{}