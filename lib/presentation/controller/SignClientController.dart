import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SignInClienController extends GetxController {
  final isAuth = false.obs;
  final datas = [].obs;

  @override
  void onInit() {
    super.onInit();
    readJson();
  }

  void onUserPress() {
    Get.toNamed('/go-pin');
    // Get.back();
  }

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/data/customer.json');
    final value = await json.decode(response);
    datas.assignAll(value);
  }
}
