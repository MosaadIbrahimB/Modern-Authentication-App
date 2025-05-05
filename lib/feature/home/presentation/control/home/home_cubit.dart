import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_style.dart';
import '../../../../cart/data/model/add_note_model.dart';
import '../../../../checkout/presentation/widgets/switch_widget.dart';
import '../../../data/model/product_model.dart';
import '../../../data/repo/repo.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState());
  bool _view = false;
  int _index = 0;
  final double _delivery = 3.50;
  double _total = 0;
  List<AddNoteModel> orderSummaryList = [];

  int getIndex() => _index;

  changeIndex(int newIndex) {
    _index = newIndex;

    emit(ChangeIndexScreenState());
  }

  addBagItem(List<ProductModel> bagProduct, ProductModel product) {
    bool e = isBagEmpty();
    if (e) {
      _view = true;
    }
    if (!e && !_view) {
      _view = true;
    }
    List<ProductModel> pro = Repo.listProduct;
    int pos = pro.indexWhere((item) => item.id == product.id);
    pro[pos].count++;

    int index = bagProduct.indexWhere((item) => item.id == product.id);
    if (index == -1) {
      product.count++;
      bagProduct.add(product);
    }
    if (index != -1) {
      bagProduct[index].count++;
    }
    emit(AddItemOfBagState());
  }

  subBagItem(List<ProductModel> bagProduct, ProductModel product) {
    if (product.count == 0) {
      return;
    }
    List<ProductModel> pro = Repo.listProduct;
    int pos = pro.indexWhere((item) => item.id == product.id);
    pro[pos].count--;
    int index = bagProduct.indexWhere((item) => item.id == product.id);
    bagProduct[index].count--;
    if (bagProduct[index].count == 0) {
      bagProduct.removeAt(index);
    }

    bool e = isBagEmpty();
    if (e) {
      changeViewBasket();
      calcCheck();
    }

    emit(SubItemOfBagState());
  }

  bool getView() {
    return _view;
  }

  void changeViewBasket() {
    _view = !_view;
    emit(ViewBasketState());
  }

  int calcItemInBasket() {
    int sum = 0;
    if (Repo.bagProduct.isNotEmpty) {
      for (ProductModel p in Repo.bagProduct) {
        sum += p.count;
      }
    }
    return sum;
  }

  getBagProduct() {
    return Repo.bagProduct;
  }

  isBagEmpty() {
    return Repo.bagProduct.isEmpty;
  }

  List<AddNoteModel> list = [];

  String calcCheck() {
    double sum = 0;
    if (Repo.bagProduct.isNotEmpty) {
      for (ProductModel p in Repo.bagProduct) {
        sum += double.parse(p.price) * p.count;
      }
    }

    _total = _delivery + sum;
    list = [
      AddNoteModel(
        pathImage: "assets/images/icon_add_note.png",
        title: "Add Note",
        widget: Icon(Icons.arrow_forward_ios, size: 20),
      ),
      AddNoteModel(
        pathImage: "assets/images/icon_send_gift.png",
        title: "Send as gift",
        widget: Icon(Icons.arrow_forward_ios, size: 20),
      ),
      AddNoteModel(
        pathImage: "assets/images/motocycle.png",
        title: "Delivery",
        widget: Text(
          "\$${_delivery.toStringAsFixed(2)}",
          style: AppTextStyle.inter16BlackW700,
        ),
      ),
      AddNoteModel(
        pathImage: "assets/images/icon_total.png",
        title: "Total",
        widget: Text(
          "\$${_total.toStringAsFixed(2)}",
          style: AppTextStyle.inter16BlackW700,
        ),
      ),
    ];
    double serviceFee = 5.25;
    double bagFee = 5.25;
    double allTotal = serviceFee + bagFee + sum;
    orderSummaryList = [
      AddNoteModel(
        title: "Subtotal",
        widget: Text(
          "\$ ${_total.toStringAsFixed(2)}",
          style: AppTextStyle.inter16BlackW700.copyWith(
            color: Colors.black54,
            fontSize: 14,
          ),
        ),
      ),
      AddNoteModel(
        title: "Bag fee ",
        widget: Text(
          "\$ $bagFee",
          style: AppTextStyle.inter16BlackW700.copyWith(
            color: Colors.black54,
            fontSize: 14,
          ),
        ),
      ),
      AddNoteModel(
        title: "Service fee",
        widget: Text(
          "\$ $serviceFee",
          style: AppTextStyle.inter16BlackW700.copyWith(
            color: Colors.black54,
            fontSize: 14,
          ),
        ),
      ),
      AddNoteModel(
        title: "Delivery",
        widget: Text(
          "\$ ${0.00}",
          style: AppTextStyle.inter16BlackW700.copyWith(
            color: Colors.black54,
            fontSize: 14,
          ),
        ),
      ),
      AddNoteModel(
        title: "Total",
        widget: Text(
          "\$ ${allTotal.toStringAsFixed(2)}",
          style: AppTextStyle.inter16BlackW700.copyWith(
            color: Colors.black54,
            fontSize: 14,
          ),
        ),
      ),
      AddNoteModel(
        title: "Request an invoice",
        widget: SwitchWidget()
      ),
    ];

    return sum.toStringAsFixed(2);
  }

  String getTotal() => _total.toStringAsFixed(2);
}

class HomeState {}

class HomeInitialState extends HomeState {}

class AddItemOfBagState extends HomeState {}

class SubItemOfBagState extends HomeState {}

class ViewBasketState extends HomeState {}

class ChangeIndexScreenState extends HomeState {}


