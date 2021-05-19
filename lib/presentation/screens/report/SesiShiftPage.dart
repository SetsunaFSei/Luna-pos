import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lunapos/presentation/controller/SesiShiftController.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppImage.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:lunapos/presentation/misc/AppStyle.dart';
import 'package:lunapos/presentation/widget/CelestialAppbar.dart';
import 'package:lunapos/presentation/widget/CelestialButton.dart';
import 'package:lunapos/presentation/widget/CelestialImage.dart';
import 'package:lunapos/presentation/widget/CelestialNavDrawer.dart';
import 'package:lunapos/presentation/widget/CelestialText.dart';

class SesiShiftPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialImage celestialImage = new CelestialImage();
    CelestialText celestialText = new CelestialText();
    TextEditingController emailText = TextEditingController(text: '');
    CelestialAppBar celestialAppBar = CelestialAppBar();
    SesiShiftController sesiShiftController = Get.put(SesiShiftController());

    return Scaffold(
      appBar: celestialAppBar.appBarStandardImage(null,
          celestialImage.celestialImage(AppImage.logoBlack, 100, 100), null),
      drawer: new Drawer(
        child: new NavDrawer(),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: DateTimePicker(
                  type: DateTimePickerType.date,
                  dateMask: 'dd-MM-yyyy',
                  initialValue:
                      sesiShiftController.selectedDate.value.toString(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                  icon: Icon(Icons.event),
                  dateLabelText: 'Date',
                  onChanged: (val) =>
                      sesiShiftController.setSelectedDate(DateTime.parse(val)),
                  validator: (val) {
                    return null;
                  },
                ),
              ),
              Text("To"),
              Flexible(
                flex: 1,
                child: DateTimePicker(
                  type: DateTimePickerType.date,
                  dateMask: 'dd-MM-yyyy',
                  initialValue:
                      sesiShiftController.selectedDate.value.toString(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                  icon: Icon(Icons.event),
                  dateLabelText: 'Date',
                  onChanged: (val) =>
                      sesiShiftController.setSelectedDate(DateTime.parse(val)),
                  validator: (val) {
                    return null;
                  },
                ),
              ),
            ],
          ),
          PrimaryButton(
            text: AppString.semua,
            onPressed: () {},
            textStyle: AppStyle.labelButtonPurple,
            color: AppColor.whiteColor,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Nama User"),
                  Text("Shift Mulai"),
                  Text("Shift Selesai"),
                  Text("Kas Saat Mulai"),
                  Text("Total Pembayaran Tunai"),
                  Text("Balance"),
                  Text("Kas Saat Selesai"),
                  Text("Selisih"),
                  Text("Total Other Payment"),
                  Text("Jumlah Transaksi"),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Bangsa The Night"),
                  Text("11/05/2021 16:51"),
                  Text("11/05/2021 16:51"),
                  Text(""),
                  Text("Rp 10.395"),
                  Text("Rp 10.395"),
                  Text(""),
                  Text("-Rp 10.395"),
                  Text(""),
                  Text("1"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
