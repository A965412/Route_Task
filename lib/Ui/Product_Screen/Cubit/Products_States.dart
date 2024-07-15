import '../../../Data/Model/ProductsResponse.dart';

abstract class ProductsState {}

class IntailProductState extends ProductsState {}

// ignore: must_be_immutable
class SucessProductsState extends ProductsState {
  ProductsResponse ProductsData;

  SucessProductsState({required this.ProductsData});
}

class ErrorProductsState extends ProductsState {
  String error;

  ErrorProductsState({required this.error});
}

class LoadingProductsState extends ProductsState {}