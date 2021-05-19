import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lunapos/presentation/controller/PosController.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppIcon.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:lunapos/presentation/misc/AppStyle.dart';
import 'package:lunapos/presentation/screens/pos/PostPaymentModal.dart';
import 'package:lunapos/presentation/widget/CelestialAppbar.dart';
import 'package:lunapos/presentation/widget/CelestialButton.dart';
import 'package:lunapos/presentation/widget/CelestialImage.dart';

class ChartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialAppBar celestialAppBar = CelestialAppBar();
    CelestialImage celestialImage = new CelestialImage();
    PosController posController = Get.put(PosController());
    // return Dialog(
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(20),
    //   ),
    //   elevation: 0,
    //   backgroundColor: Colors.transparent,
    //   child: contentBox(context),
    // );
    return Scaffold(
      body: contentBox(context, celestialAppBar, celestialImage, posController),
    );
  }

  contentBox(context, celestialAppBar, celestialImage, posController) {
    return Scaffold(
      appBar: celestialAppBar.appBarCustomer(AppIcon.back, "Keranjang",
          AppIcon.more, AppColor.whiteColor, AppColor.blackColor, null),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: celestialImage.celestialIcon(
                                  AppIcon.hashtag, 15.0, AppColor.darkPurple),
                            ),
                            Text(
                              'New Order',
                              style: AppStyle.labelOrder,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: celestialImage.celestialIcon(
                                AppIcon.pelanggan, 15.0, AppColor.darkPurple),
                          ),
                          Text(
                            'Pilih Pelanggan',
                            style: AppStyle.labelCustomer,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        celestialImage.celestialIcon(
                            AppIcon.table, 15.0, AppColor.darkPurple),
                        Text(
                          'Table',
                          style: AppStyle.labelOrder,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        celestialImage.celestialIcon(
                            AppIcon.pelanggan, 15.0, AppColor.darkPurple),
                        Text('1'),
                      ],
                    ),
                    Flexible(
                      flex: 1,
                      child: PrimaryButton(
                          text: AppString.normal,
                          onPressed: () {},
                          textStyle: AppStyle.labelButtonPurple,
                          color: AppColor.whiteColor,
                          width: 100.0),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 9,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                      itemCount: 10 ?? 0,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                flex: 8,
                                child: Text(
                                  'Ayam Grepek Setan Pedas',
                                  style: AppStyle.labelProductName,
                                ),
                              ),
                              Flexible(
                                flex: 4,
                                child: Row(
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 40.0),
                                        child: Text('x ' + '1',
                                            style: AppStyle.labelQuantity),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: Text('Rp ' + '9.000',
                                          style: AppStyle.labelProductName),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ),
              // Divider(),

              Flexible(
                flex: 4,
                child: Card(
                  color: AppColor.grayLabel,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: BorderSide(width: 1, color: AppColor.borderColor),
                  ),
                  child: Obx(() => Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: !posController.isItem.value
                          ? Opacity(
                              opacity: !posController.isItem.value ? 1.0 : 0.0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CelestialIconButton(
                                          onPressed: () {
                                            posController.isItem.value =
                                                !posController.isItem.value;
                                          },
                                          size: 10.0,
                                          icon: AppIcon.arrowUp),
                                      Text(
                                        'Total Item',
                                        style: AppStyle.labelQuantity,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Rp 10.395',
                                    style: AppStyle.labelQuantity,
                                  ),
                                ],
                              ),
                            )
                          : Opacity(
                              opacity: posController.isItem.value ? 1.0 : 0.0,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Subtotal',
                                        style: AppStyle.labelQuantity,
                                        textAlign: TextAlign.left,
                                      ),
                                      Text('Rp. 9000',
                                          style: AppStyle.labelQuantity,
                                          textAlign: TextAlign.right),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Diskon',
                                          style: AppStyle.labelQuantity,
                                          textAlign: TextAlign.left),
                                      Text('Rp. 0',
                                          style: AppStyle.labelQuantity,
                                          textAlign: TextAlign.right),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Service Charge',
                                          style: AppStyle.labelQuantity,
                                          textAlign: TextAlign.left),
                                      Text('Rp. 450',
                                          style: AppStyle.labelQuantity,
                                          textAlign: TextAlign.right),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Pajak',
                                          style: AppStyle.labelQuantity,
                                          textAlign: TextAlign.left),
                                      Text('Rp. 945',
                                          style: AppStyle.labelQuantity,
                                          textAlign: TextAlign.right),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Adjusment',
                                          style: AppStyle.labelQuantity,
                                          textAlign: TextAlign.left),
                                      Text('Rp. 0',
                                          style: AppStyle.labelQuantity,
                                          textAlign: TextAlign.right),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          CelestialIconButton(
                                              onPressed: () {
                                                posController.isItem.value =
                                                    !posController.isItem.value;
                                              },
                                              size: 10.0,
                                              icon: AppIcon.arrowUp),
                                          Text(
                                            'Total Item',
                                            style: AppStyle.labelQuantity,
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Rp 10.395',
                                        style: AppStyle.labelQuantity,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ))),
                ),
              ),
              Flexible(
                flex: 1,
                child: PrimaryButton(
                  text: AppString.simpan,
                  onPressed: () {},
                  color: AppColor.backgroundColor,
                ),
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: PrimaryButton(
                              text: AppString.printBill,
                              onPressed: () {},
                              textStyle: AppStyle.labelButtonPurple,
                              color: AppColor.whiteColor,
                            ),
                          )),
                      Flexible(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: PrimaryButton(
                                text: AppString.bayar,
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return PosPaymentModal();
                                      });
                                },
                                color: AppColor.primaryColor),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
