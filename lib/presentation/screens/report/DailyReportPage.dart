import 'package:flutter/material.dart';
import 'package:lunapos/presentation/controller/DailyReportController.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppIcon.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:lunapos/presentation/widget/CelestialAppbar.dart';
import 'package:lunapos/presentation/widget/CelestialCustom.dart';
import 'package:lunapos/presentation/widget/CelestialNavDrawer.dart';
import 'package:lunapos/presentation/widget/CelestialText.dart';

class DailyReportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialText celestialText = new CelestialText();
    TextEditingController emailText = TextEditingController(text: '');
    DailyReportController dailyReportController = new DailyReportController();
    CelestialAppBar celestialAppBar = new CelestialAppBar();

    return Scaffold(
      appBar: celestialAppBar.appBarStandard(
          AppIcon.search, AppString.companyTitle, AppColor.whiteColor, null),
      drawer: new Drawer(
        child: new NavDrawer(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // celestialText.celestialTextField(AppString.search, emailText),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 1,
                child: DateTimePicker(
                  type: DateTimePickerType.date,
                  dateMask: 'dd-MM-yyyy',
                  initialValue:
                      dailyReportController.selectedDate.value.toString(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                  icon: Icon(Icons.event),
                  dateLabelText: 'Date',
                  onChanged: (val) => dailyReportController
                      .setSelectedDate(DateTime.parse(val)),
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
                  initialValue:
                      dailyReportController.selectedDate.value.toString(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                  icon: Icon(Icons.event),
                  dateLabelText: 'Date',
                  onChanged: (val) => dailyReportController
                      .setSelectedDate(DateTime.parse(val)),
                  validator: (val) {
                    return null;
                  },
                ),
              ),
            ],
          ),

          // celestialText.celestialTextField(AppString.search, emailText),
          Text("Sales Sumary"),
          CelestialDashLine(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total Sales"),
              Text("Rp 9.000"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total Discount"),
              Text("Rp 0"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total Service Charge"),
              Text("Rp 450"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total Tax"),
              Text("Rp 945"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total Adjustment"),
              Text("Rp 0"),
            ],
          ),
          CelestialDashLine(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total"),
              Text("Rp 10.395"),
            ],
          ),
          Text("Invoice"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Number of Inv"),
              Text("1"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Number Average Bill per Inv"),
              Text("Rp 10.395"),
            ],
          ),
          Text("Void Summary"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Number of Invoice"),
              Text("0"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Number of Items"),
              Text("0"),
            ],
          ),
          CelestialDashLine(),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total"),
              Text("0"),
            ],
          ),
          Text("Summary by Salestype"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Normal"),
              Text("Rp 10.395"),
            ],
          ),
          CelestialDashLine(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total"),
              Text("Rp 10.395"),
            ],
          ),
          Text("Summary by Pax"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total Pax"),
              Text("1"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Average Pax Per Day"),
              Text("1"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Average Sales Per Pax"),
              Text("Rp 10.395"),
            ],
          ),
          Text("Sumary By Payment"),
          Text("Tunai"),
          CelestialDashLine(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total"),
              Text("Rp 10.395"),
            ],
          ),
          Text("Summary By Product"),
          Text("Aneka Pasta"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Normal"),
                  Text("123456"),
                ],
              ),
              Text("1"),
              Text("Rp 9.000"),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total"),
              Text("Rp 10.395"),
            ],
          ),
        ],
      ),
    );
  }
}
