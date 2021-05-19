import 'package:get/get.dart';

class LoginController extends GetxController {
  final isAuth = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  // void onAuthPress() {
  //   isAuth(true);
  // }

  setIsAuth(bool value) {
    print('value : $value');
    isAuth(value);
  }

  void onLoginPress() {
    Get.toNamed('/sign-client');
  }

  void onRegisterPress() {
    Get.toNamed('/register');
  }

  void onForgotPasswordPress() {
    Get.toNamed('/register');
  }
}
