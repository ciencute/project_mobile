import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/home/home_identity.dart';
import '../models/user_identity/user_identity.dart';
part 'movie_data_api.g.dart';

@RestApi()
abstract class MovieAPI {
  factory MovieAPI(Dio dio, {String baseUrl}) = _MovieAPI;
  @POST("/api/login")
  Future<UserModel> authLogin(@Body() Map<String, dynamic> body);
    @GET("/api/home")
  Future<HomeModel>  getHomeUI();
}
