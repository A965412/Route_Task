import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:routetask/Domain/UseCase/GetProducts_UseCase.dart';
import 'package:routetask/Ui/Product_Screen/Cubit/Products_States.dart';

import '../../../Data/Repo/Products_DataSource.dart';
import '../../../Data/Repo/products_Repo.dart';
import '../../../Data/api/Api_Manager.dart';
import '../../../Domain/Repo/Products.Repo.dart';
import '../../../Domain/Repo/Products.dataSource.dart';

class ProductsPageCubit extends Cubit<ProductsState> {
  ProductsPageCubit() : super(IntailProductState());

  Future<void> getProducts() async {
    ApiManager apiManager = ApiManager();
    ProductRemoteDS productRemoteDS = ProductRemoteDSImpl(apiManager);
    ProductListRepo productListRepo = ProductListRepoImpl(productRemoteDS);
    ProductListUseCase productListUseCase = ProductListUseCase(productListRepo);
    var result = await productListUseCase.Invoke();
    result.fold((l) {
      emit(ErrorProductsState(error: l.message));
    }, (response) {
      emit(SucessProductsState(ProductsData: response));
    });
  }
}