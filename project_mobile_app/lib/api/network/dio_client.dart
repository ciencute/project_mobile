import 'dart:async';

import 'package:dio/dio.dart';
import 'api_interceptors.dart';

class DioClient {
  static late Dio _dio;
  static FutureOr<Dio> setup({
    required String baseUrl,
  }) async {
    final options = BaseOptions(
      responseType: ResponseType.json,
      validateStatus: (status) {
        return true;
      },
      headers: {'Accept': 'application/json'},
      baseUrl: baseUrl,
      receiveTimeout: 30000, // 30s
      sendTimeout: 30000, // 30s
    );
    _dio = Dio(options);
    _dio.interceptors.add(ApiInterceptors());
    return _dio;
  }

  static Dio get dio => _dio;
}
