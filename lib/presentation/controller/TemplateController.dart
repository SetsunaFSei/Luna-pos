import 'package:get/get.dart';

class TemplateController extends GetxController {
  final logo = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void onLogoCheck(bool status) {
    logo(status);
  }
}
