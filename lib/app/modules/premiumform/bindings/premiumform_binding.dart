import 'package:get/get.dart';

import '../controllers/premiumform_controller.dart';

class PremiumformBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PremiumformController>(
      () => PremiumformController(),
    );
  }
}
