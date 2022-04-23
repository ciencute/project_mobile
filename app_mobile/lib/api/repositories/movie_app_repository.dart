import 'package:app_mobile/api/models/ui_item/ui_item.dart';

import '../models/home/home_identity.dart';
import '../models/pagination/pagination_identity.dart';
import '../models/pagination_actor/pagination_actor.dart';
import '../models/user_identity/user_identity.dart';

abstract class MovieAppRepository {
  Future<UserModel> signIn(
    String username,
    String password,
  );
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
  Future<bool> ratingMovie(
    int movieId,
    int ratingPoint,
  );
  Future<bool> commentMovie(
    int movieId,
    String content,
  );
  Future<bool> addMovieFavorite(
    int movieId,
  );
  Future<bool> deleteMovieFavorite(int movieId);
}
//getMovieFavoriteActor  getMovieByActorID  getMoviesTopFavorite //getMoviesTopView
