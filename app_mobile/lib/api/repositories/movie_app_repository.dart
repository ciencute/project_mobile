import 'dart:io';

import 'package:retrofit/retrofit.dart';

import '../models/response_result/response_result.dart';
import '../models/ui_item/ui_item.dart';

import '../models/home/home_identity.dart';
import '../models/pagination/pagination_identity.dart';
import '../models/pagination_actor/pagination_actor.dart';
import '../models/user_identity/user_identity.dart';

abstract class MovieAppRepository {
  Future<UserModel> signIn(
    String username,
    String password,
  );
  Future<UserModel> register(String name, String email, String password);
  Future<ResponseResult> editYourProfile(
      String name, String email, String password, File files);

  // editYourProfile
  Future<HomeUIModel> getHomeUI();
  Future<UIItem> getMovieDetail(int id);
  Future<PaginationModel> getMovieAnimation(int? page);
  Future<PaginationModel> getMovieCategoryByID(int id, int? page);
  Future<List<UIItem>> getMoviesTopViewOne();
  Future<PaginationActorModel> getFavoriteActor(int? page);
  Future<PaginationModel> getMovieByActorID(int actorId, int? page);
  Future<List<UIItem>> getMoviesTopFavorite();
  Future<PaginationModel> getMoviesTopView(int? page);
  Future<PaginationModel> getMoviesFavoriteMovie(int? page);
  Future<UIItem> getMoviesByID(int id);

  Future<PaginationModel> getMovieWatched(int? page);
  Future<ResponseResult> ratingMovie(
    int movieId,
    int ratingPoint,
  );
  Future<ResponseResult> commentMovie(
    int movieId,
    String content,
  );
  Future<ResponseResult> addMovieFavorite(
    int movieId,
  );
  Future<ResponseResult> deleteMovieFavorite(int movieId);
  Future<PaginationModel> getYourFavorite(int? page);
  // top 10
  Future<List<UIItem>> getMoviesTopwatchedDay();
  Future<List<UIItem>> getMoviesTopwatchedWeek();
  Future<List<UIItem>> getMoviesTopwatchedMonth();
  Future<List<UIItem>> getMoviesTopYear();
  // actor
  Future<ResponseResult> deleteActorYourFavorite(
    int actorId,
  );
  Future<ResponseResult> addActorYourFavorite(
    int actorId,
  );

  Future<List<Categories>> getAllCategory();
  Future<PaginationModel> getMoviesByCategoryID(int categoryId, int? page);
}
//getMovieFavoriteActor  getMovieByActorID  getMoviesTopFavorite //getMoviesTopView
