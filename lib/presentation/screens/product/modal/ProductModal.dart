import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lunapos/presentation/controller/PosController.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppImage.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:lunapos/presentation/misc/AppStyle.dart';
import 'package:lunapos/presentation/widget/CelestialImage.dart';
import 'package:lunapos/presentation/widget/CelestialText.dart';

class ProductModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialImage celestialImage = new CelestialImage();
    CelestialText celestialText = new CelestialText();
    TextEditingController emailText = TextEditingController(text: '');
    PosController posController = Get.put(PosController());

    return Scaffold(
      body: Column(
        children: [
          Text('Pilih Product'),
          celestialText.celestialTextField(AppString.search, emailText),
          Obx(() {
            // return Text(customerController.datas.length.toString());
            return ListView.builder(
                itemCount: posController.datas.length ?? 0,
                itemBuilder: (context, index) {
                  return Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () => {},
                              child: Row(
                                children: [
                                  Flexible(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: celestialImage.celestialImage(
                                          AppImage.placeholder, 80, 80),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 4,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Aloe Jelly Drink',
                                            style: AppStyle.labelProductName,
                                          ),
                                          Text('Rp 20.000',
                                              style: AppStyle.labelPrice),
                                          Text('SKU : ' + '43412221',
                                              style: AppStyle.labelSku),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 20),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        width: 1,
                                        color: AppColor.borderColorList),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ));
                });
          }),
        ],
      ),
    );
  }
}
