import 'package:app_mobile/api/models/ui_item/ui_item.dart';

import '../models/home/home_identity.dart';
import '../models/pagination/pagination_identity.dart';
import '../models/user_identity/user_identity.dart';

abstract class MovieAppRepository {
  Future<UserModel> signIn(
    String username,
    String password,
  );
  Future<HomeUIModel> getHomeUI();
  Future<UIItem> getMovieDetail(int page);
  Future<PaginationModel> getMovieAnimation(int? page);
  Future<PaginationModel> getMovieCategoryByID(int id,int? page);
  Future<List<UIItem>> getMoviesTopView();
}
