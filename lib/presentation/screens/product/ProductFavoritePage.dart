import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lunapos/presentation/controller/ProductController.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppIcon.dart';
import 'package:lunapos/presentation/misc/AppImage.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:lunapos/presentation/misc/AppStyle.dart';
import 'package:lunapos/presentation/widget/CelestialButton.dart';
import 'package:lunapos/presentation/widget/CelestialImage.dart';

class ProductFavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ProductController productController = Get.put(ProductController());
    CelestialImage celestialImage = new CelestialImage();
    return Scaffold(
      body: Column(
        children: [
          PrimaryButton(
            text: AppString.printBill,
            onPressed: () {},
            textStyle: AppStyle.labelButtonPurple,
            color: AppColor.whiteColor,
          ),
          PrimaryButton(
              text: AppString.bayar,
              onPressed: () {},
              color: AppColor.backgroundColor),
          Container(
            child: Obx(() {
              // return Text(customerController.datas.length.toString());
              return ListView.builder(
                  itemCount: productController.datas.length ?? 0,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        celestialImage.celestialImage(
                            AppImage.placeholder, 80, 80),
                        Text('123456'),
                        Text('Sku : 09999665'),
                        Text('Rp 9.000'),
                        CelestialIconButton(
                            onPressed: () {},
                            color: AppColor.silver,
                            tint: AppColor.blackColor,
                            size: 30,
                            icon: AppIcon.order),
                      ],
                    );
                  });
            }),
          ),
        ],
      ),
    );
  }
}
