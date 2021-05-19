import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class OrderController extends GetxController {
  final logo = false.obs;
  final datas = [].obs;
  final selectedItem = "".obs;
  final selectedDate = DateTime.now().obs;

  List<String> enumOrder = [
    'Order',
    'Meja',
  ];

  @override
  void onInit() {
    super.onInit();
    readJson();
  }

  setSelectedDate(DateTime value) {
    selectedDate(value);
  }

  setselectedItem(String value) {
    selectedItem(value);
  }

  List<DropdownMenuItem> generateItems(List<String> enumOrder) {
    List<DropdownMenuItem> items;
    for (var item in enumOrder) {
      items.add(DropdownMenuItem(child: Text(item), value: item));
    }
    return items != null ? items : enumOrder;
  }

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/data/product.json');
    final value = await json.decode(response);
    datas.assignAll(value);
  }

  void onLogoCheck(bool status) {
    logo(status);
  }
}
