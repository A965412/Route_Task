import 'package:dartz/dartz.dart';
import 'package:routetask/Data/api/Api_Manager.dart';
import 'package:routetask/Domain/Entity/Faliuers.dart';
import 'package:routetask/Domain/Entity/ProductResponseEntity.dart';
import 'package:routetask/Domain/Repo/Products.dataSource.dart';

class ProductsRemoteDataSourceImp implements ProductsRemoteDataSource{

  ApiManager apiManager ;
  ProductsRemoteDataSourceImp({required this.apiManager});
  @override
  Future<Either<Failures, ProductResponseEntity>> getProducts() async {
     var either = await apiManager.getproducts();
    return either.fold((l) {
      return Left(l);
    },
            (response) {
      return Right(response);
            });
  }

   
  
}