import '../datasource/movie_data_api.dart';
import '../models/home/home_identity.dart';
import '../models/pagination/pagination_identity.dart';
import '../models/pagination_actor/pagination_actor.dart';
import '../models/ui_item/ui_item.dart';
import '../models/user_identity/user_identity.dart';
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
  Future<List<UIItem>> getMoviesTopViewOne() {
    return _movieAPI.getMoviesTopViewOne();
  }

  @override
  Future<PaginationModel> getMovieByActorID(int actorId, int? page) {
    return _movieAPI.getMovieByActorID(actorId, page);
  }

  @override
  Future<List<UIItem>> getMoviesTopFavorite() {
    return _movieAPI.getMoviesTopFavorite();
  }

  @override
  Future<PaginationModel> getMoviesFavoriteMovie(int? page) {
    return _movieAPI.getMoviesFavoriteMovie(page);
  }

  @override
  Future<PaginationModel> getMoviesTopView(int? page) {
    return _movieAPI.getMoviesTopView(page);
  }

  @override
  Future<UIItem> getMoviesByID(int id) {
    return _movieAPI.getMoviesByID(id);
  }

  @override
  Future<bool> ratingMovie(int movieId, int ratingPoint) {
    final param = {
      'movieId': 7,
      'ratingPoint': 4,
    };
    return _movieAPI.ratingMovie(param);
  }

  @override
  Future<bool> commentMovie(int movieId, String content) {
    final param = {
      'movieId': 7,
      'content': content,
    };
    return _movieAPI.commentMovie(param);
  }

  @override
  Future<PaginationModel> getMovieWatched(int? page) {
    return _movieAPI.getMovieWatched(page);
  }

  @override
  Future<bool> addMovieFavorite(int movieId) {
    final param = {
      'movieId': movieId,
    };
    return _movieAPI.addMovieFavorite(param);
  }

  @override
  Future<bool> deleteMovieFavorite(int movieId) {
    final param = {
      'movieId': movieId,
    };
    return _movieAPI.deleteMovieFavorite(param);
  }

  @override
  Future<PaginationActorModel> getFavoriteActor(int? page) {
    return _movieAPI.getFavoriteActor(page);
  }

  @override
  Future<PaginationModel> getYourFavorite(int? page) {
    return _movieAPI.getYourFavorite(page);
  }
}
