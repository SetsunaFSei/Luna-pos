import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lunapos/presentation/controller/OrderController.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppIcon.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:lunapos/presentation/misc/AppStyle.dart';
import 'package:lunapos/presentation/widget/CelestialAppbar.dart';
import 'package:lunapos/presentation/widget/CelestialButton.dart';
import 'package:lunapos/presentation/widget/CelestialImage.dart';
import 'package:lunapos/presentation/widget/CelestialNavDrawer.dart';
import 'package:lunapos/presentation/widget/CelestialText.dart';

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialText celestialText = new CelestialText();
    CelestialImage celestialImage = new CelestialImage();
    TextEditingController emailText = TextEditingController(text: '');
    CelestialAppBar celestialAppBar = new CelestialAppBar();
    OrderController orderController = Get.put(OrderController());

    return Scaffold(
      appBar: celestialAppBar.appBarStandard(
          AppIcon.search, AppString.companyTitle, AppColor.whiteColor, null),
      drawer: new Drawer(
        child: new NavDrawer(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Flexible(
                  flex: 8,
                  child: celestialText.celestialTextField(
                      AppString.email, emailText)),
              Flexible(
                flex: 1,
                child: CelestialIconButton(
                    onPressed: () {},
                    color: AppColor.silver,
                    tint: AppColor.blackColor,
                    size: 30,
                    icon: AppIcon.order),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 1,
                child: DateTimePicker(
                  type: DateTimePickerType.date,
                  dateMask: 'dd-MM-yyyy',
                  initialValue: orderController.selectedDate.value.toString(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                  icon: Icon(Icons.event),
                  dateLabelText: 'Date',
                  onChanged: (val) =>
                      orderController.setSelectedDate(DateTime.parse(val)),
                  validator: (val) {
                    return null;
                  },
                ),
              ),
              Text("to"),
              Flexible(
                flex: 1,
                child: DateTimePicker(
                  type: DateTimePickerType.date,
                  dateMask: 'dd-MM-yyyy',
                  // controller: peneranganLocationController
                  //     .selectedDate.value,
                  initialValue: orderController.selectedDate.value.toString(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                  icon: Icon(Icons.event),
                  dateLabelText: 'Date',
                  onChanged: (val) =>
                      orderController.setSelectedDate(DateTime.parse(val)),
                  validator: (val) {
                    return null;
                  },
                ),
              ),
            ],
          ),
          Text('Status'),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: PrimaryButton(
                  text: AppString.selesai,
                  onPressed: () {},
                  textStyle: AppStyle.labelButtonPurple,
                  color: AppColor.whiteColor,
                ),
              ),
              Flexible(
                flex: 1,
                child: PrimaryButton(
                  text: AppString.batal,
                  onPressed: () {},
                  textStyle: AppStyle.labelButtonPurple,
                  color: AppColor.whiteColor,
                ),
              ),
              Flexible(
                flex: 1,
                child: PrimaryButton(
                  text: AppString.aktif,
                  onPressed: () {},
                  textStyle: AppStyle.labelButtonPurple,
                  color: AppColor.whiteColor,
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(right: 200.0, top: 8.0, bottom: 8.0),
            child: PrimaryButton(
              text: AppString.resetFilter,
              onPressed: () {},
              color: AppColor.redColor,
            ),
          ),
          Text("Friday, 14/05/2021"),
          // CelestialIconButton(
          //     onPressed: () {},
          //     color: AppColor.silver,
          //     tint: AppColor.blackColor,
          //     size: 30,
          //     icon: AppIcon.order),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  celestialImage.celestialIcon(
                      AppIcon.hashtag, 15.0, AppColor.darkPurple),
                  Text("140521-1"),
                  celestialImage.celestialIcon(
                      AppIcon.syncIcon, 15.0, AppColor.darkPurple),
                ],
              ),
              Flexible(flex: 1, child: Text("15/05/2021")),
            ],
          ),

          // Text("-"),
          // celestialImage.celestialIcon(
          //     AppIcon.hashtag, 15.0, AppColor.darkPurple),
          // Text("12:37"),
          // celestialImage.celestialIcon(
          //     AppIcon.hashtag, 15.0, AppColor.darkPurple),
          // Text("-"),
          // celestialImage.celestialIcon(
          //     AppIcon.hashtag, 15.0, AppColor.darkPurple),
          // Text("Rp 10.395"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: celestialImage.celestialIcon(
                    AppIcon.pelanggan, 15.0, AppColor.darkPurple),
              ),
              Container(child: Text("-")),
              celestialImage.celestialIcon(
                  AppIcon.table, 15.0, AppColor.darkPurple),
              Container(child: Text("12:37")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: celestialImage.celestialIcon(
                    AppIcon.table, 15.0, AppColor.darkPurple),
              ),
              Container(child: Text("-")),
              Container(child: Text("Rp 10.395")),
            ],
          ),

          Text("Selesai"),
        ],
      ),
    );
  }
}
