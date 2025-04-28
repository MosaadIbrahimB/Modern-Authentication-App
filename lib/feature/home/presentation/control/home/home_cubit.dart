import 'package:bloc/bloc.dart';

import '../../../data/model/product_model.dart';
import '../../../data/repo/repo.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState());

  addBagItem(List<ProductModel> bagProduct, ProductModel product) {
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
    emit(SubItemOfBagState());
  }
}

class HomeState {}

class HomeInitialState extends HomeState {}

class AddItemOfBagState extends HomeState {}

class SubItemOfBagState extends HomeState {}
