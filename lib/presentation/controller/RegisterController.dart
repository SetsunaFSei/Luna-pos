import 'package:get/get.dart';

class RegisterController extends GetxController {
  final isAuth = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void onBackPress() {
    Get.back();
  }

  void onRegisterPress() {
    Get.back();
  }
}
