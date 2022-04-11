import '../datasource/movie_data_api.dart';
import 'movie_app_repository.dart';

class MovieAppRepositoryImpl extends MovieAppRepository {
  final MovieAPI _movieAPI;
  MovieAppRepositoryImpl(this._movieAPI);
}
