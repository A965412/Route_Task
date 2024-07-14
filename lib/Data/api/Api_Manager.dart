import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:routetask/Data/Model/ProductsResponseDto.dart';
import 'package:routetask/Data/api/Api_Constant.dart';
import 'package:routetask/Domain/Entity/Faliuers.dart';
import 'package:http/http.dart' as http;

class ApiManager{

  ApiManager._();
  static ApiManager? _instance ;

  static ApiManager getInstance(){
    _instance??= ApiManager._();
    return _instance!;
  }

    Future<Either<Failures, ProductsResponseDto>> getproducts() async {
    var connectivityResult = await Connectivity().checkConnectivity(); // User defined class
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      Uri url = Uri.https(ApiConstant.baseUrl, ApiConstant.productEndPoint);
      var response = await http.get(url);
      var Productresponse = ProductsResponseDto.fromJson(
          jsonDecode(response.body));
      if(response.statusCode >= 200 && response.statusCode < 300){
        // success
        return Right(Productresponse);
      }else{
        return Left(ServerError(errorMessage: "Error"
        ));
      }
    }else{
      // no internet connection
      return Left(NetworkError(errorMessage: 'Please check Internet Connection'));
    }
  }
}

