// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_data_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _MovieAPI implements MovieAPI {
  _MovieAPI(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
