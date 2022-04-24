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
  Future<UserModel> authRegister(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserModel>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'api/register',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ResponseResult> editYourProfile(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseResult>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'api/user/editProfile',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseResult.fromJson(_result.data!);
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
                .compose(
                    _dio.options, '/api/movies/category/${id}?page=${page}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PaginationModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<UIItem>> getMoviesTopViewOne() async {
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

  @override
  Future<PaginationActorModel> getFavoriteActor(page) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    if (page != null) {
      _data.fields.add(MapEntry('page', page.toString()));
    }
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PaginationActorModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(
                    _dio.options, '/api/movies/favorite/actor?page=${page}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PaginationActorModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PaginationModel> getMovieByActorID(actorId, page) async {
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
                .compose(
                    _dio.options, '/api/movies/actor/${actorId}?page=${page}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PaginationModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<UIItem>> getMoviesTopFavorite() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<UIItem>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/movies/favorite/movie/top10ofAll',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => UIItem.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<PaginationModel> getMoviesTopView(page) async {
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
                .compose(_dio.options, '/api/movies/topView/?page=${page}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PaginationModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PaginationModel> getMoviesFavoriteMovie(page) async {
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
                .compose(
                    _dio.options, '/api/movies/favorite/movie/?page=${page}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PaginationModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UIItem> getMoviesByID(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry('id', id.toString()));
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UIItem>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/movies/{id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UIItem.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ResponseResult> addMovieFavorite(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseResult>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/movies/favorite/movie/add',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseResult.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ResponseResult> deleteMovieFavorite(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseResult>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/movies/favorite/movie/remove',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseResult.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ResponseResult> ratingMovie(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseResult>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/user/rating/movie',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseResult.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ResponseResult> commentMovie(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseResult>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/user/commentOnMovie',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseResult.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PaginationModel> getMovieWatched(page) async {
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
                .compose(_dio.options, '/api/movies/watched?page=${page}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PaginationModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PaginationModel> getYourFavorite(page) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    if (page != null) {
      _data.fields.add(MapEntry('page', page.toString()));
    }
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PaginationModel>(Options(
                method: 'GET', headers: _headers, extra: _extra)
            .compose(
                _dio.options, '/api/movies/favorite/yourFavorite?page=${page}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PaginationModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<UIItem>> getMoviesTopwatchedDay() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<UIItem>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/movies/topViews/day',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => UIItem.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<UIItem>> getMoviesTopwatchedWeek() async {
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

  @override
  Future<List<UIItem>> getMoviesTopwatchedMonth() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<UIItem>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/movies/topViews/month',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => UIItem.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<UIItem>> getMoviesTopYear() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<UIItem>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/movies/topViews/year',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => UIItem.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<UIItem> getProfileByID(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UIItem>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/user/profile/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UIItem.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ResponseResult> deleteActorYourFavorite(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseResult>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/movies/favorite/actor/remove',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseResult.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ResponseResult> addActorYourFavorite(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseResult>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/movies/favorite/actor/add',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseResult.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<Categories>> getAllCategory() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<Categories>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/category',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Categories.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<PaginationModel> getMoviesByCategoryID(categoryId, page) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    if (page != null) {
      _data.fields.add(MapEntry('page', page.toString()));
    }
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PaginationModel>(Options(
                method: 'GET', headers: _headers, extra: _extra)
            .compose(
                _dio.options, 'api/movies/category/${categoryId}?page=${page}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PaginationModel.fromJson(_result.data!);
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
