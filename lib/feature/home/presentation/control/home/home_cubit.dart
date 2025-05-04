import 'package:bloc/bloc.dart';

import '../../../data/model/product_model.dart';
import '../../../data/repo/repo.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState());
  bool _view = false;
  int _index = 0;

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
    if (!e&&!_view) {
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

  String calcCheck() {
    double sum = 0;
    if (Repo.bagProduct.isNotEmpty) {
      for (ProductModel p in Repo.bagProduct) {
        sum += double.parse(p.price) * p.count;
      }
    }
    return sum.toStringAsFixed(2);
  }
}

class HomeState {}

class HomeInitialState extends HomeState {}

class AddItemOfBagState extends HomeState {}

class SubItemOfBagState extends HomeState {}

class ViewBasketState extends HomeState {}

class ChangeIndexScreenState extends HomeState {}
