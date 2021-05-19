import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lunapos/presentation/controller/SesiShiftController.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppIcon.dart';
import 'package:lunapos/presentation/misc/AppImage.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:lunapos/presentation/widget/CelestialAppbar.dart';
import 'package:lunapos/presentation/widget/CelestialButton.dart';
import 'package:lunapos/presentation/widget/CelestialImage.dart';
import 'package:lunapos/presentation/screens/shift/SaldoKasAwalModal.dart';
import 'package:lunapos/presentation/widget/CelestialNavDrawer.dart';

class ShiftPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialAppBar celestialAppBar = new CelestialAppBar();
    CelestialImage celestialImage = new CelestialImage();
    SesiShiftController sesiShiftController = Get.put(SesiShiftController());

    return Scaffold(
        appBar: celestialAppBar.appBarStandard(
            AppIcon.search, AppString.companyTitle, AppColor.whiteColor, null),
        drawer: new Drawer(
          child: new NavDrawer(),
        ),
        body: Obx(() => sesiShiftController.isStartShift.value
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                      flex: 5,
                      child: celestialImage.celestialImage(
                          AppImage.startShift, 300, 300)),
                  Flexible(
                    flex: 1,
                    child: Text(
                        "Tidak ada sesi shift yang Aktif. Klik tombol \"MULAI SHIFT\" untuk memulai"),
                  ),
                  Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, left: 100.0, right: 100.0),
                        child: PrimaryButton(
                            color: AppColor.primaryColor,
                            text: 'Mulai Shift',
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      scrollable: true,
                                      title: Text('Saldo Awal Kas'),
                                      content: SaldoKasAwalModal(),
                                    );
                                  });
                            }),
                      )),
                ],
              )
            : Column(
                children: [
                  CircleAvatar(
                    radius: 90.0,
                    backgroundImage:
                        NetworkImage('https://via.placeholder.com/150'),
                    backgroundColor: Colors.transparent,
                  ),
                  Text('Bangsa The Night'),
                  Text('Jam Mulai Shift'),
                  Text('17/05/2021 - 16:19'),
                  Text('Saldo Awal Kas'),
                  Text('0'),
                  PrimaryButton(
                    text: AppString.endShift,
                    onPressed: () {},
                    color: AppColor.primaryColor,
                  ),
                ],
              )));
  }
}
