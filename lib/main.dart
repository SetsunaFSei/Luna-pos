import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/Rooting.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(primarySwatch: AppColor.primaryColor),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: rootPage,
    );
  }
}
