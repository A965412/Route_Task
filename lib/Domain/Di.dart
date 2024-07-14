import 'package:routetask/Data/Repo/Products_DataSource.dart';
import 'package:routetask/Data/Repo/products_Repo.dart';
import 'package:routetask/Data/api/Api_Manager.dart';
import 'package:routetask/Domain/Repo/Products.Repo.dart';
import 'package:routetask/Domain/Repo/Products.dataSource.dart';
import 'package:routetask/Domain/UseCase/GetProducts_UseCase.dart';

GetProductsUseCase injectproductsUsecase() {
  return GetProductsUseCase(injectproductrepo());
}

ProductsReposatiry injectproductrepo() {
  return productsRepoImp(
      productsRemoteDataSource: injectgetproductsDataSource());
}

ProductsRemoteDataSource injectgetproductsDataSource() {
  return ProductsRemoteDataSourceImp(apiManager: ApiManager.getInstance());
}
