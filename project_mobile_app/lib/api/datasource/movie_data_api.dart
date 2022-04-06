import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'movie_data_api.g.dart';

@RestApi()
abstract class MovieAPI {
  factory MovieAPI(Dio dio, {String baseUrl}) = _MovieAPI;
}
