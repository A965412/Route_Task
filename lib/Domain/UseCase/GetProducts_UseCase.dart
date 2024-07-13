import 'package:dartz/dartz.dart';
import 'package:routetask/Domain/Entity/Faliuers.dart';
import 'package:routetask/Domain/Entity/ProductResponseEntity.dart';
import 'package:routetask/Domain/Repo/Products.Repo.dart';

class GetProductsUseCase {
  ProductsReposatiry productsReposatiry;
  GetProductsUseCase(this.productsReposatiry);

 Future<Either<Failures, ProductResponseEntity>> invoke() {
    return productsReposatiry.getProducts();
  }
}
