import 'package:dartz/dartz.dart';

import '../../Data/Failuers.dart';
import '../../Data/Model/ProductsResponse.dart';

abstract class ProductRemoteDS {
  Future<Either<Failures, ProductsResponse>> getProducts();
}