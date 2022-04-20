import 'package:app_mobile/api/models/ui_item/ui_item.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/home/home_identity.dart';
import '../models/pagination/pagination_identity.dart';
import '../models/user_identity/user_identity.dart';
part 'movie_data_api.g.dart';

@RestApi()
abstract class MovieAPI {
  factory MovieAPI(Dio dio, {String baseUrl}) = _MovieAPI;
  @POST("/api/login")
  Future<UserModel> authLogin(@Body() Map<String, dynamic> body);
  @GET("/api/home")
  Future<HomeUIModel>  getHomeUI();
  @GET('/api/movies/{id}')
  Future<UIItem> getMovieDetail(@Path() int id);
  @GET('/api/movies/animation?page={page}')
  Future<PaginationModel> getMovieAnimation(
     @Part() int? page);
}
