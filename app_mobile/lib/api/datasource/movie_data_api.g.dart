// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_data_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _MovieAPI implements MovieAPI {
  _MovieAPI(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<UserModel> authLogin(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserModel>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/login',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<HomeUIModel> getHomeUI() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HomeUIModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/home',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = HomeUIModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UIItem> getMovieDetail(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UIItem>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/movies/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UIItem.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PaginationModel> getMovieAnimation(page) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    if (page != null) {
      _data.fields.add(MapEntry('page', page.toString()));
    }
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PaginationModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/movies/animation?page=${page}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PaginationModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PaginationModel> getMovieCategoryByID(id, page) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    if (page != null) {
      _data.fields.add(MapEntry('page', page.toString()));
    }
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PaginationModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/movies/category/${id}?page=${page}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PaginationModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<UIItem>> getMoviesTopWeek() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<UIItem>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/movies/mostView/topWeek',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => UIItem.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

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
