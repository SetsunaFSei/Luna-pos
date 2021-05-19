import 'package:get/get.dart';

class PinController extends GetxController {
  final logo = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void onCompleted() {
    Get.toNamed('/pos');
  }
}
