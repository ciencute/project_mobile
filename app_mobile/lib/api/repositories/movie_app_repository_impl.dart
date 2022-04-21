import 'package:app_mobile/api/models/user_identity/user_identity.dart';

import '../datasource/movie_data_api.dart';
import '../models/home/home_identity.dart';
import '../models/pagination/pagination_identity.dart';
import '../models/ui_item/ui_item.dart';
import 'movie_app_repository.dart';

class MovieAppRepositoryImpl extends MovieAppRepository {
  final MovieAPI _movieAPI;
  MovieAppRepositoryImpl(this._movieAPI);

  @override
  Future<UserModel> signIn(String username, String password) async {
    final param = {
      'email': 'ljenkins@example.net',
      'password': 'password',
    };
    return _movieAPI.authLogin(param);
  }

  @override
  Future<HomeUIModel> getHomeUI() {
    return _movieAPI.getHomeUI();
  }

  @override
  Future<UIItem> getMovieDetail(int id) {
    return _movieAPI.getMovieDetail(id);
  }

  @override
  Future<PaginationModel> getMovieAnimation(int? page) {
    return _movieAPI.getMovieAnimation(page);
  }

  @override
  Future<PaginationModel> getMovieCategoryByID(int id, int? page) {
    return _movieAPI.getMovieCategoryByID(id, page);
  }

  @override
  Future<List<UIItem>> getMoviesTopView() {
    return _movieAPI.getMoviesTopWeek();
  }
}
