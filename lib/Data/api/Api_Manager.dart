import 'package:dio/dio.dart';

import 'Api_Constant.dart';

class ApiManager {
  ApiManager._();
  static ApiManager? _instance ;

  static ApiManager getInstance(){
    _instance??= ApiManager._();
    return _instance!;
  }

  late Dio dio;

  ApiManager() {
    dio = Dio();
  }

  Future<Response> getData(
      {required String endPoint, Map<String, dynamic>? data}) {
    return dio.get(ApiConstant.baseURl + endPoint, queryParameters: data);
  }
}

