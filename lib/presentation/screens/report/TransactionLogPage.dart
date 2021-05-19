import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lunapos/presentation/controller/PosController.dart';
import 'package:lunapos/presentation/controller/TransactionLogController.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppIcon.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:lunapos/presentation/misc/AppStyle.dart';
import 'package:lunapos/presentation/widget/CelestialAppbar.dart';
import 'package:lunapos/presentation/widget/CelestialButton.dart';
import 'package:lunapos/presentation/widget/CelestialNavDrawer.dart';
import 'package:lunapos/presentation/widget/CelestialText.dart';

class TransactionLogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialText celestialText = new CelestialText();
    TextEditingController emailText = TextEditingController(text: '');
    CelestialAppBar celestialAppBar = CelestialAppBar();
    PosController posController = Get.put(PosController());
    TransactionLogController transactionLogController =
        Get.put(TransactionLogController());

    return Scaffold(
      backgroundColor: AppColor.silver,
      appBar: celestialAppBar.appBarStandard(
          AppIcon.search, AppString.companyTitle, AppColor.whiteColor, null),
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
                      transactionLogController.selectedDate.value.toString(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                  icon: Icon(Icons.event),
                  dateLabelText: 'Date',
                  onChanged: (val) => transactionLogController
                      .setSelectedDate(DateTime.parse(val)),
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
                      transactionLogController.selectedDate.value.toString(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                  icon: Icon(Icons.event),
                  dateLabelText: 'Date',
                  onChanged: (val) => transactionLogController
                      .setSelectedDate(DateTime.parse(val)),
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
          Expanded(
            child: ListView.builder(
                itemCount: posController.datas.length ?? 0,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () => {},
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              side: BorderSide(
                                  width: 1, color: AppColor.borderColor),
                            ),
                            elevation: 2,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Nama User"),
                                    Text("Bangsa The Night"),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Tanggal"),
                                    Text("14/05/2021 11:23"),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("No Order"),
                                    Text("140521-1"),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Deskripsi"),
                                    Text("Membuat Order Baru"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    width: 1, color: AppColor.borderColorList),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
