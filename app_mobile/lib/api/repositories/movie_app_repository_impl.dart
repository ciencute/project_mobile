import 'package:app_mobile/api/models/user_identity/user_identity.dart';

import '../datasource/movie_data_api.dart';
import '../models/home/home_identity.dart';
import 'movie_app_repository.dart';

class MovieAppRepositoryImpl extends MovieAppRepository {
  final MovieAPI _movieAPI;
  MovieAppRepositoryImpl(this._movieAPI);

  @override
  Future<UserModel> signIn(String username, String password)async {
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

}
