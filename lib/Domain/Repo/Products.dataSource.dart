import 'package:dartz/dartz.dart';
import 'package:routetask/Domain/Entity/Faliuers.dart';
import 'package:routetask/Domain/Entity/ProductResponseEntity.dart';

abstract class ProductsRemoteDataSource {
  Future<Either<Failures, ProductResponseEntity>> getProducts();
}