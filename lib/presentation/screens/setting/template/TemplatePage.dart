import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lunapos/presentation/controller/TemplateController.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppIcon.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:lunapos/presentation/widget/CelestialAppbar.dart';
import 'package:lunapos/presentation/widget/CelestialCheckbox.dart';
import 'package:lunapos/presentation/widget/CelestialNavDrawer.dart';

class TemplatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialCheckbox celestialCheckbox = new CelestialCheckbox();
    CelestialAppBar celestialAppBar = new CelestialAppBar();
    TemplateController templateController = Get.put(TemplateController());
    return Scaffold(
      appBar: celestialAppBar.appBarCustomer(
          AppIcon.search,
          AppString.companyTitle,
          AppIcon.search,
          AppColor.primaryColor,
          AppColor.blackColor,
          null),
      drawer: new Drawer(
        child: new NavDrawer(),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bill',
                  ),
                  celestialCheckbox.celestialCheckbox("Logo",
                      templateController.logo.value, templateController),
                  celestialCheckbox.celestialCheckbox("Order Name",
                      templateController.logo.value, templateController),
                  celestialCheckbox.celestialCheckbox("Order Date",
                      templateController.logo.value, templateController),
                  celestialCheckbox.celestialCheckbox("Address",
                      templateController.logo.value, templateController),
                  celestialCheckbox.celestialCheckbox("Cashier and User",
                      templateController.logo.value, templateController),
                  Text('Receipt'),
                  celestialCheckbox.celestialCheckbox("Logo",
                      templateController.logo.value, templateController),
                  celestialCheckbox.celestialCheckbox("Order Name",
                      templateController.logo.value, templateController),
                  celestialCheckbox.celestialCheckbox("Order Date",
                      templateController.logo.value, templateController),
                  celestialCheckbox.celestialCheckbox("Address",
                      templateController.logo.value, templateController),
                  celestialCheckbox.celestialCheckbox("Cashier and User",
                      templateController.logo.value, templateController),
                ],
              );
            }),
          )
        ],
      ),
    );
  }
}
