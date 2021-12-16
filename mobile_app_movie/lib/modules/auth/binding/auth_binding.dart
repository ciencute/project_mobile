import 'package:get/get.dart';

import '../../../base/base_binding.dart';
import '../controller/auth_controller.dart';

class AuthBinding extends BaseBinding {
  @override
  void dependencies() {
    super.dependencies();
    Get.lazyPut<AuthController>(() => AuthController());
  }
}
