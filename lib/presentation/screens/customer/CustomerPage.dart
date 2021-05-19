import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lunapos/presentation/controller/CustomerController.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppIcon.dart';
import 'package:lunapos/presentation/misc/AppImage.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:lunapos/presentation/widget/CelestialAppbar.dart';
import 'package:lunapos/presentation/widget/CelestialImage.dart';
import 'package:lunapos/presentation/widget/CelestialNavDrawer.dart';
import 'package:lunapos/presentation/widget/CelestialText.dart';

class CustomerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialText celestialText = new CelestialText();
    // CelestialImage celestialImage = new CelestialImage();
    CelestialAppBar celestialAppBar = new CelestialAppBar();
    // TextEditingController controllerText = TextEditingController();
    TextEditingController search = TextEditingController(text: '');
    final CustomerController customerController = Get.put(CustomerController());
    CelestialImage celestialImage = new CelestialImage();

    return Scaffold(
      appBar: celestialAppBar.appBarCustomer(
          AppIcon.search,
          AppString.companyTitle,
          AppIcon.search,
          AppColor.primaryColor,
          null,
          null),
      drawer: new Drawer(
        child: new NavDrawer(),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: celestialText.celestialTextField('Search', search)),
              ],
            ),
          ),
          Flexible(
            flex: 11,
            child: Obx(() {
              // return Text(customerController.datas.length.toString());
              return ListView.builder(
                  itemCount: customerController.datas.length ?? 0,
                  itemBuilder: (context, index) {
                    return Flexible(
                        flex: 1,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 50.0,
                              backgroundImage: NetworkImage(
                                  'https://via.placeholder.com/150'),
                              backgroundColor: Colors.transparent,
                            ),
                            // celestialImage.celestialImage(
                            //     AppImage.placeholder, 80, 80),
                            Column(
                              children: [
                                Text('Yogi Firmansyah'),
                                Text('+62 8883 2128 370'),
                              ],
                            ),
                          ],
                        ));
                  });
            }),
          )
        ],
      ),
    );
  }
}
