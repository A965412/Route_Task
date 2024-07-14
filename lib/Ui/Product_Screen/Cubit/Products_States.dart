import 'package:routetask/Domain/Entity/Faliuers.dart';
import 'package:routetask/Domain/Entity/ProductResponseEntity.dart';

abstract class ProductsState {}

class IntialProductState extends ProductsState {}

class LoadingProductState extends ProductsState {}

class ErrorproductState extends ProductsState {
  Failures errorMassage;
  ErrorproductState({required this.errorMassage});
}

class SucessproductState extends ProductsState {
  ProductResponseEntity productResponseEntity;
  SucessproductState({required this.productResponseEntity});
}
