import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lunapos/presentation/controller/ProductController.dart';
import 'package:lunapos/presentation/misc/AppImage.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:lunapos/presentation/misc/AppStyle.dart';
import 'package:lunapos/presentation/widget/CelestialImage.dart';
import 'package:lunapos/presentation/widget/CelestialNavDrawer.dart';
import 'package:lunapos/presentation/widget/CelestialText.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialText celestialText = new CelestialText();
    TextEditingController search = TextEditingController(text: '');
    final ProductController productController = Get.put(ProductController());
    CelestialImage celestialImage = new CelestialImage();

    return Scaffold(
        appBar: AppBar(
          title: Text(AppString.companyTitle),
        ),
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
                      child:
                          celestialText.celestialTextField('Search', search)),
                ],
              ),
            ),
            Expanded(
              child: Obx(() {
                // return Text(customerController.datas.length.toString());
                return ListView.builder(
                    itemCount: productController.datas.length ?? 0,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: celestialImage.celestialImage(
                                AppImage.placeholder, 80, 80),
                          ),
                          Flexible(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Aloe Jelly Drink',
                                    style: AppStyle.labelProductName,
                                  ),
                                  Text('Rp 20.000', style: AppStyle.labelPrice),
                                  Text('SKU : ' + '43412221',
                                      style: AppStyle.labelSku),
                                ],
                              ),
                            ),
                          )
                        ],
                      );
                    });
              }),
            )
          ],
        ));
  }
}
