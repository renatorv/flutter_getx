import 'package:get/state_manager.dart';

class GlobalController extends GetxController {
  @override
  void onInit() {
    super.onInit();

    print('🤜 Global inInit');
  }

  Future<void> _loadProducts() async {}
}
