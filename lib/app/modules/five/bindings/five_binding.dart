import 'package:get/get.dart';

import '../controllers/five_controller.dart';

class FiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FiveController>(
      () => FiveController(),
    );
  }
}
