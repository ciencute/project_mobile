import 'dart:io';

import '../datasource/movie_data_api.dart';
import '../models/home/home_identity.dart';
import '../models/pagination/pagination_identity.dart';
import '../models/pagination_actor/pagination_actor.dart';
import '../models/response_result/response_result.dart';
import '../models/ui_item/ui_item.dart';
import '../models/user_identity/user_identity.dart';
import 'movie_app_repository.dart';

class MovieAppRepositoryImpl extends MovieAppRepository {
  final MovieAPI _movieAPI;
  MovieAppRepositoryImpl(this._movieAPI);

  @override
  Future<UserModel> signIn(String username, String password) async {
    final param = {
      'email': 'ciencute1998@gmail.com',
      'password': '080298',
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
  Future<ResponseResult> ratingMovie(int movieId, int ratingPoint) {
    final param = {
      'movieId': 7,
      'ratingPoint': 4,
    };
    return _movieAPI.ratingMovie(param);
  }

  @override
  Future<ResponseResult> commentMovie(int movieId, String content) {
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
  Future<ResponseResult> addMovieFavorite(int movieId) {
    final param = {
      'movieId': movieId,
    };
    return _movieAPI.addMovieFavorite(param);
  }

  @override
  Future<ResponseResult> deleteMovieFavorite(int movieId) {
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

  @override
  Future<List<UIItem>> getMoviesTopYear() {
    return _movieAPI.getMoviesTopYear();
  }

  @override
  Future<List<UIItem>> getMoviesTopwatchedDay() {
    return _movieAPI.getMoviesTopwatchedDay();
  }

  @override
  Future<List<UIItem>> getMoviesTopwatchedMonth() {
    return _movieAPI.getMoviesTopwatchedMonth();
  }

  @override
  Future<List<UIItem>> getMoviesTopwatchedWeek() {
    return _movieAPI.getMoviesTopwatchedWeek();
  }

  @override
  addActorYourFavorite(int actorId) {
    final param = {
      'actorId': actorId,
    };
    return _movieAPI.addActorYourFavorite(param);
  }

  @override
  deleteActorYourFavorite(int actorId) {
    final param = {
      'actorId': actorId,
    };
    return _movieAPI.deleteActorYourFavorite(param);
  }

  @override
  register(String name, String email, String password) {
    final param = {
      'name': name,
      'email': email,
      'password': password,
    };
    return _movieAPI.authRegister(param);
  }

  @override
  Future<ResponseResult> editYourProfile(
      String name, String email, String password, File files) {
    final param = {
      'name': name,
      'email': email,
      'password': password,
      'files': files,
    };
    return _movieAPI.editYourProfile(param);
  }

  @override
  Future<List<Categories>> getAllCategory() {
    return _movieAPI.getAllCategory();
  }

  @override
  Future<PaginationModel> getMoviesByCategoryID(int categoryId, int? page) {
    return _movieAPI.getMoviesByCategoryID(categoryId, page);
  }
}
