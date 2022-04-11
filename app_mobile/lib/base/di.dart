import '../api/datasource/movie_data_api.dart';
import '../api/repositories/movie_app_repository.dart';
import '../api/repositories/movie_app_repository_impl.dart';
import 'package:get/get.dart';

import '../api/network/dio_client.dart';
import '../shared/constants/common.dart';

class DependencyInjection {
  static Future<void> init(String environment) async {
    //api
    final _dioAPIClient = await DioClient.setup(baseUrl: ClientAPIDomain);
    final uiAPI = MovieAPI(_dioAPIClient);
    final MovieAppRepository uiRepo = MovieAppRepositoryImpl(uiAPI);
    Get.put(uiRepo);
  }
}
