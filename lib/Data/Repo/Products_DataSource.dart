import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:routetask/Data/api/Api_Manager.dart';

import 'package:routetask/Domain/Repo/Products.dataSource.dart';

import '../Failuers.dart';
import '../Model/ProductsResponse.dart';
import '../api/Api_Constant.dart';

class ProductRemoteDSImpl implements ProductRemoteDS {
  ApiManager apiManager;

  ProductRemoteDSImpl(this.apiManager);

  @override
  Future<Either<Failures, ProductsResponse>> getProducts() async {
    try {
      Response response =
          await apiManager.getData(endPoint: ApiEndpoint.products, data: null);
      ProductsResponse productModel = ProductsResponse.fromJson(response.data);

      return Right(productModel);
    } catch (e) {
      return Left(NetworkError(e.toString()));
    }
  }
}