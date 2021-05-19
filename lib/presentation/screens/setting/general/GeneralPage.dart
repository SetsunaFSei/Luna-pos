import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lunapos/presentation/controller/GeneralController.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppIcon.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:lunapos/presentation/widget/CelestialAppbar.dart';
import 'package:lunapos/presentation/widget/CelestialCheckbox.dart';
import 'package:lunapos/presentation/widget/CelestialNavDrawer.dart';

class GeneralPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialCheckbox celestialCheckbox = new CelestialCheckbox();
    CelestialAppBar celestialAppBar = new CelestialAppBar();
    GeneralController generalController = Get.put(GeneralController());
    return Scaffold(
      appBar: celestialAppBar.appBarStandard(
          AppIcon.search, AppString.companyTitle, AppColor.whiteColor, null),
      drawer: new Drawer(
        child: new NavDrawer(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Obx(() {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  celestialCheckbox.celestialCheckbox(
                      "Kunci Aplikasi", generalController.isLock.value, null),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 8.0),
                    child: Text('(Setelah 5 menit tidak ada aktivitas)'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 8.0),
                    child: Text(
                        '*Aplikasi akan dikunci jika tidak ada aktivitas selama 5 menit. (restart diperlukan)'),
                  )
                ],
              ),
            );
          }))
        ],
      ),
    );
  }
}
