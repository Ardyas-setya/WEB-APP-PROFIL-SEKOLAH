import 'package:get/get.dart';

import '../controllers/six_controller.dart';

class SixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SixController>(
      () => SixController(),
    );
  }
}
