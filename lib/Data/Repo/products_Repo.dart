import 'package:dartz/dartz.dart';

import 'package:routetask/Domain/Repo/Products.Repo.dart';
import 'package:routetask/Domain/Repo/Products.dataSource.dart';

import '../Failuers.dart';
import '../Model/ProductsResponse.dart';

class ProductListRepoImpl implements ProductListRepo {
  ProductRemoteDS productRemoteDS;

  ProductListRepoImpl(this.productRemoteDS);

  @override
  Future<Either<Failures, ProductsResponse>> getProductList() {
    return productRemoteDS.getProducts();
  }
}