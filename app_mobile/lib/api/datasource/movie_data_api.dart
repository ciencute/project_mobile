import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/home/home_identity.dart';
import '../models/pagination/pagination_identity.dart';
import '../models/pagination_actor/pagination_actor.dart';
import '../models/response_result/response_result.dart';
import '../models/ui_item/ui_item.dart';
import '../models/user_identity/user_identity.dart';

part 'movie_data_api.g.dart';

@RestApi()
abstract class MovieAPI {
  factory MovieAPI(Dio dio, {String baseUrl}) = _MovieAPI;
  @POST("/api/login")
  Future<UserModel> authLogin(@Body() Map<String, dynamic> body);
  @POST("api/register")
  Future<UserModel> authRegister(@Body() Map<String, dynamic> body);
  //e dit profile
  @POST("api/user/editProfile")
  Future<ResponseResult> editYourProfile(@Body() Map<String, dynamic> body);
  //
  @GET("/api/home")
  Future<HomeUIModel> getHomeUI();
  @GET('/api/movies/{id}')
  Future<UIItem> getMovieDetail(@Path() int id);
  @GET('/api/movies/animation?page={page}')
  Future<PaginationModel> getMovieAnimation(@Part() int? page);
  @GET('/api/movies/category/{id}?page={page}')
  Future<PaginationModel> getMovieCategoryByID(
      @Path() int id, @Part() int? page);
  //top 10
  //most movie
  @GET("/api/movies/mostView/topWeek")
  Future<List<UIItem>> getMoviesTopViewOne();
  @GET('/api/movies/favorite/actor?page={page}')
  Future<PaginationActorModel> getFavoriteActor(@Part() int? page);
  @GET('/api/movies/actor/{actorId}?page={page}')
  Future<PaginationModel> getMovieByActorID(
      @Path() int actorId, @Part() int? page);
  @GET("/api/movies/favorite/movie/top10ofAll")
  Future<List<UIItem>> getMoviesTopFavorite();
  @GET("/api/movies/topView/?page={page}")
  Future<PaginationModel> getMoviesTopView(@Part() int? page);
  @GET("/api/movies/favorite/movie/?page={page}")
  Future<PaginationModel> getMoviesFavoriteMovie(@Part() int? page);
  //detail
  @GET("/api/movies/{id}")
  Future<UIItem> getMoviesByID(@Part() int id);
  //yeu thichs
  @POST("/api/movies/favorite/movie/add")
  Future<ResponseResult> addMovieFavorite(@Body() Map<String, dynamic> body);
  // xoa phim
  @POST("/api/movies/favorite/movie/remove")
  Future<ResponseResult> deleteMovieFavorite(@Body() Map<String, dynamic> body);
  // danh gia phim
  @POST("/api/user/rating/movie")
  Future<ResponseResult> ratingMovie(@Body() Map<String, dynamic> body);
  // comment
  @POST("/api/user/commentOnMovie")
  Future<ResponseResult> commentMovie(@Body() Map<String, dynamic> body);
  // da xem
  @GET('/api/movies/watched?page={page}')
  Future<PaginationModel> getMovieWatched(@Part() int? page);
  //danh sach phim yeu thich cua ban
  @GET('/api/movies/favorite/yourFavorite?page={page}')
  Future<PaginationModel> getYourFavorite(@Part() int? page);
  // TOP 10 CÁC PHIM XEM NHIÈU NHAT
  // TOP 10 CÁC PHIM XEM NHIÈU NHAT
  @GET("/api/movies/topViews/day")
  Future<List<UIItem>> getMoviesTopwatchedDay();
  @GET("/api/movies/mostView/topWeek")
  Future<List<UIItem>> getMoviesTopwatchedWeek();
  @GET("/api/movies/topViews/month")
  Future<List<UIItem>> getMoviesTopwatchedMonth();
  @GET("/api/movies/topViews/year")
  Future<List<UIItem>> getMoviesTopYear();
  //Lấy thông tin của người dùng bằng ID
  @GET('/api/user/profile/{id}')
  Future<UIItem> getProfileByID(@Path() int id);
  //Xóa diễn viên khỏi danh sách yêu thích của bạn
  //Thêm diễn viên vào danh sách yêu thích của bạn
  @POST("/api/movies/favorite/actor/remove")
  Future<ResponseResult> deleteActorYourFavorite(
      @Body() Map<String, dynamic> body);
  @POST("/api/movies/favorite/actor/add")
  Future<ResponseResult> addActorYourFavorite(
      @Body() Map<String, dynamic> body);
  //the loại
  @GET("/api/category")
  Future<List<Categories>> getAllCategory();
  @GET("api/movies/category/{categoryId}?page={page}")
  Future<PaginationModel> getMoviesByCategoryID(
      @Path() int categoryId, @Part() int? page);
}
//
