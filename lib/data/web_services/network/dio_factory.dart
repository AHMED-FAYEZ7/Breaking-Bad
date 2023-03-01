import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../app/constant.dart';

const String APPLICATION_JSON = "application/json";
const String ACCEPT = "accept";

class DioFactory {
  Future<Dio> getDio() async {
    Dio dio = Dio();
    Map<String, String> headers = {
      ACCEPT: APPLICATION_JSON,
    };

    dio.options = BaseOptions(
      baseUrl: Constant.baseUrl,
      connectTimeout: Duration(seconds: 20),
      receiveTimeout: Duration(seconds: 20),
      headers: headers,
    );

    if (kReleaseMode) {
      print("release mode no logs");
    } else {
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ));
    }

    return dio;
  }
}
