import 'package:get/get.dart';

class SystemController extends GetxController {
  final isAuth = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void onCreateAccountPress() {
    isAuth(false);
  }
}
