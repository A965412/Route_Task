import 'package:dartz/dartz.dart';
import 'package:routetask/Data/Repo/Products_DataSource.dart';
import 'package:routetask/Domain/Entity/Faliuers.dart';
import 'package:routetask/Domain/Entity/ProductResponseEntity.dart';
import 'package:routetask/Domain/Repo/Products.Repo.dart';

class productsRepoImp implements ProductsReposatiry {
  ProductsRemoteDataSourceImp productsRemoteDataSourceImp;

  productsRepoImp({required this.productsRemoteDataSourceImp});
  @override
  Future<Either<Failures, ProductResponseEntity>> getProducts() {
    return productsRemoteDataSourceImp.getProducts();
  }
}
