
import '../api/network/dio_client.dart';
import '../shared/constants/common.dart';


class DependencyInjection {
  static Future<void> init(String environment) async {
    //api
    final _dioAPIClient =
        await DioClient.setup(baseUrl: ClientAPIDomain);
  }
}
