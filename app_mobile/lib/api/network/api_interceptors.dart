import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../shared/constants/storage.dart';
import '../../shared/utils/logger.dart';

class ApiInterceptors extends InterceptorsWrapper {
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final method = options.method;
    final uri = options.uri;
    final data = options.data;
    SharedPreferences prefs = await SharedPreferences.getInstance();

    options.headers['Authorization'] =
        'Bearer ${prefs.getString(StorageConstants.token)}';

    logger.log(
        '\n\n--------------------------------------------------------------------------------------------------------');
    if (method == 'GET') {
      logger.log(
          '✈️ REQUEST[$method] => PATH: $uri \n Token: ${options.headers}',
          printFullText: true);
    } else {
      try {
        logger.log(
            '✈️ REQUEST[$method] => PATH: $uri \n Token: ${prefs.getString(StorageConstants.token)} \n DATA: ${jsonEncode(data)}',
            printFullText: true);
      } catch (e) {
        logger.log(
            '✈️ REQUEST[$method] => PATH: $uri \n Token: ${prefs.getString(StorageConstants.token)} \n DATA: $data',
            printFullText: true);
      }
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final statusCode = response.statusCode;
    final uri = response.requestOptions.uri;
    final data = jsonEncode(response.data);
    logger.log('✅ RESPONSE[$statusCode] => PATH: $uri\n DATA: $data');
    //Handle section expired
    if (response.statusCode == 401) {
      // GlobalEvent.instance.onTokenExpired.add(true);
    }
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    final statusCode = err.response?.statusCode;
    final uri = err.requestOptions.path;
    var data = '';
    try {
      data = jsonEncode(err.response?.data);
    } catch (e, s) {
      logger.e(e, stackTrace: s);
    }
    logger.log('⚠️ ERROR[$statusCode] => PATH: $uri\n DATA: $data');
    super.onError(err, handler);
  }
}
