import 'package:get/get.dart';

class GeneralController extends GetxController {
  final isLock = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void onCreateAccountPress() {
    isLock(false);
  }
}
