import 'package:get/get.dart';

class NavDrawerController extends GetxController {
  final isProduct = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void onLoginPress() {
    Get.toNamed('/sign-client');
  }
}
