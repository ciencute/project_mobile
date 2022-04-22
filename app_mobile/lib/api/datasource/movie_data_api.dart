import 'package:app_mobile/api/models/ui_item/ui_item.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/home/home_identity.dart';
import '../models/pagination/pagination_identity.dart';
import '../models/pagination_actor/pagination_actor.dart';
import '../models/user_identity/user_identity.dart';
part 'movie_data_api.g.dart';

@RestApi()
abstract class MovieAPI {
  factory MovieAPI(Dio dio, {String baseUrl}) = _MovieAPI;
  @POST("/api/login")
  Future<UserModel> authLogin(@Body() Map<String, dynamic> body);
  @GET("/api/home")
  Future<HomeUIModel> getHomeUI();
  @GET('/api/movies/{id}')
  Future<UIItem> getMovieDetail(@Path() int id);
  @GET('/api/movies/animation?page={page}')
  Future<PaginationModel> getMovieAnimation(@Part() int? page);
  @GET('/api/movies/category/{id}?page={page}')
  Future<PaginationModel> getMovieCategoryByID(
      @Path() int id, @Part() int? page);
  @GET("/api/movies/mostView/topWeek")
  Future<List<UIItem>> getMoviesTopWeek();
   @GET('/api/movies/favorite/actor?page={page}')
  Future<PaginationActorModel> getMovieFavoriteActor({@Part() int? page});
}
