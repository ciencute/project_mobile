import 'package:get/get.dart';

import '../../../base/base_binding.dart';
import '../controller/home_controller.dart';

class HomeBinding extends BaseBinding {
  @override
  void dependencies() {
    super.dependencies();
    Get.lazyPut<HomeController>(HomeController.new);
  }
}
