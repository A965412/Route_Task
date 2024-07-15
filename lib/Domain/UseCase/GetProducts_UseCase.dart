import 'package:dartz/dartz.dart';

import 'package:routetask/Domain/Repo/Products.Repo.dart';

import '../../Data/Failuers.dart';
import '../../Data/Model/ProductsResponse.dart';

class ProductListUseCase {
  ProductListRepo productListRepo;

  ProductListUseCase(this.productListRepo);

  Future<Either<Failures, ProductsResponse>> Invoke() =>
      productListRepo.getProductList();
}
