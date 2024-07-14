import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:routetask/Domain/Entity/ProductResponseEntity.dart';
import 'package:routetask/Domain/UseCase/GetProducts_UseCase.dart';
import 'package:routetask/Ui/Product_Screen/Cubit/Products_States.dart';

class ProductsViewModel extends Cubit<ProductsState> {
  List<ProductsDataEntity> Productdata = [];
  GetProductsUseCase getProductsUseCase;
  ProductsViewModel({required this.getProductsUseCase})
      : super(IntialProductState());

  GetAllProducts() async {
    emit(LoadingProductState());
    var either = await getProductsUseCase.invoke();
    either.fold(
        (error) => emit(
              ErrorproductState(errorMassage: error),
            ), (response) {
      Productdata = response.products ?? [];
      emit(SucessproductState(productResponseEntity: response));
    });
  }
}
