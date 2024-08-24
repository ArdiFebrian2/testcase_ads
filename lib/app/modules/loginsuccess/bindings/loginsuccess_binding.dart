import 'package:get/get.dart';

import '../controllers/loginsuccess_controller.dart';

class LoginsuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginsuccessController>(
      () => LoginsuccessController(),
    );
  }
}
