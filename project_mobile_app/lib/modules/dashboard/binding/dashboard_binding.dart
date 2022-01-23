import 'package:get/get.dart';
import '../../../base/base_binding.dart';
import '../controller/dashboard_controller.dart';

class DashboardBinding extends BaseBinding {
  @override
  void dependencies() {
    super.dependencies();
    Get.lazyPut<DashboardController>(() => DashboardController());
  }
}
