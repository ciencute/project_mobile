import 'package:get/get.dart';

import '../api/datasource/movie_data_api.dart';
import '../api/network/dio_client.dart';
import '../api/repositories/movie_app_repository.dart';
import '../api/repositories/movie_app_repository_impl.dart';
import '../shared/constants/common.dart';
import '../shared/services/storage_service.dart';

class DependencyInjection {
  static Future<void> init() async {
    //api
    await Get.putAsync(() => StorageService().init());
    final _dioAPIClient = await DioClient.setup(baseUrl: ClientAPIDomain);
    final uiAPI = MovieAPI(_dioAPIClient);
    final MovieAppRepository uiRepo = MovieAppRepositoryImpl(uiAPI);
    Get.put(uiRepo);
  }
}
