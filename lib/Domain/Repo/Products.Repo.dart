import 'package:dartz/dartz.dart';

import '../../Data/Failuers.dart';
import '../../Data/Model/ProductsResponse.dart';

abstract class ProductListRepo {
  Future<Either<Failures, ProductsResponse>> getProductList();
}