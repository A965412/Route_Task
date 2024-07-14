import 'package:dartz/dartz.dart';
import 'package:routetask/Data/Repo/Products_DataSource.dart';
import 'package:routetask/Domain/Entity/Faliuers.dart';
import 'package:routetask/Domain/Entity/ProductResponseEntity.dart';
import 'package:routetask/Domain/Repo/Products.Repo.dart';
import 'package:routetask/Domain/Repo/Products.dataSource.dart';

class productsRepoImp implements ProductsReposatiry {
  ProductsRemoteDataSource productsRemoteDataSource;

  productsRepoImp({required this.productsRemoteDataSource});
  @override
  Future<Either<Failures, ProductResponseEntity>> getProducts() {
    return productsRemoteDataSource.getProducts();
  }
}
