import 'package:flutter/material.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:lunapos/presentation/misc/AppStyle.dart';
import 'package:lunapos/presentation/screens/pos/modal/TunaiModal.dart';
import 'package:lunapos/presentation/widget/CelestialAppbar.dart';
import 'package:lunapos/presentation/widget/CelestialButton.dart';

class PosPaymentModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialAppBar celestialAppBar = CelestialAppBar();
    return Scaffold(
      appBar: celestialAppBar.appBarStandard(
          null, "Pembayaran", AppColor.whiteColor, null),
      body: Column(
        children: [
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 30.0, bottom: 30.0, left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: AppStyle.labelTotalPembayaran,
                  ),
                  Text('Rp. 10.395', style: AppStyle.labelTotalPembayaranRp),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 10,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: (4 / 1),
                ),
                itemCount: 7,
                itemBuilder: (context, int index) {
                  return Card(
                    color: AppColor.whiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: BorderSide(width: 1, color: AppColor.borderColor),
                    ),
                    elevation: 2,
                    child: InkWell(
                      onTap: () {
                        // signInClienController.onUserPress();
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                scrollable: true,
                                title:
                                    Text('Tunai', textAlign: TextAlign.center),
                                content: TunaiModal(),
                              );
                            });
                      },
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    'Tunai',
                                    textAlign: TextAlign.center,
                                    style: AppStyle.labelPrice,
                                  ),
                                ),
                              )),
                            ],
                          )),
                    ),
                  );
                }),
          ),
          Flexible(
            flex: 2,
            child: Card(
              color: AppColor.whiteColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: BorderSide(width: 1, color: AppColor.borderColor),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Sisa Pembayaran',
                          style: AppStyle.labelTotalPembayaran),
                      Text('Rp. 10.395',
                          style: AppStyle.labelTotalPembayaranRp),
                    ],
                  ),
                  PrimaryButton(
                      text: AppString.bayar,
                      color: AppColor.backgroundColor,
                      onPressed: () {
                        // loginController.onLoginPress();
                      })
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
