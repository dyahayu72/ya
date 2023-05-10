import 'package:get/get.dart';

import '../controllers/antri_controller.dart';
import '../views/antri_view.dart';

class AntriBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AntriController>(
      () => AntriController(),
    );
  }
}
