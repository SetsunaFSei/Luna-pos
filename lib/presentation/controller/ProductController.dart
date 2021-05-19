import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  final isAuth = false.obs;
  final datas = [].obs;

  @override
  void onInit() {
    super.onInit();
    readJson();
  }

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/data/product.json');
    final value = await json.decode(response);
    datas.assignAll(value);
  }

  setIsAuth(bool value) {
    isAuth(value);
  }

//   void onEmailPress() {
//     isAuth(false);
//   }
}
