import 'package:flutter_getx/home_page.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 3), () {
      Get.off(HomePage(), transition: Transition.zoom);
    });
  }

  // @override
  // Future<void> onClose() {
  //   print('Some as dispose!!');
  //   return super.onClose();
  // }
}
//terminei aula 4
