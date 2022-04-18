import '../models/home/home_identity.dart';
import '../models/user_identity/user_identity.dart';

abstract class MovieAppRepository {
  Future<UserModel> signIn(
    String username,
    String password,
  );
  Future<HomeUIModel> getHomeUI();
}
