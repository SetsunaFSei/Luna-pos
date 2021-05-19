import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lunapos/presentation/controller/OrderController.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppIcon.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:lunapos/presentation/widget/CelestialAppbar.dart';
import 'package:lunapos/presentation/widget/CelestialCheckbox.dart';
import 'package:lunapos/presentation/widget/CelestialDropdown.dart';
import 'package:lunapos/presentation/widget/CelestialNavDrawer.dart';

class OrderTemplatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialAppBar celestialAppBar = new CelestialAppBar();
    CelestialCheckbox celestialCheckbox = new CelestialCheckbox();
    CelestialDropdown celestialDropdown = new CelestialDropdown();
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
          Text(AppString.tampilanAwal),
          Container(
              // constraints: BoxConstraints.expand(),
              child: Column(
            children: [
              celestialDropdown.celestialDropdown("One"),
              // celestialDropdown.celestialDropdown(""),
            ],
          )),
          celestialCheckbox.celestialCheckbox(
              AppString.requiredCustomer, orderController.logo.value, null),
          celestialCheckbox.celestialCheckbox(
              "Pelanggan Wajib Diisi", orderController.logo.value, null),
          celestialCheckbox.celestialCheckbox(
              "Sesi Shift wajib aktif sebelum membuat order",
              orderController.logo.value,
              null),
          celestialCheckbox.celestialCheckbox(
              "Tampilkan dtail uang tunai saat shift Selesai",
              orderController.logo.value,
              null),
          celestialCheckbox.celestialCheckbox("Aktifkan pembulatn total order",
              orderController.logo.value, null),
          celestialCheckbox.celestialCheckbox(
              "Aktifkan nomor antrian", orderController.logo.value, null),
          celestialCheckbox.celestialCheckbox(
              "Aktifkan catatan custom", orderController.logo.value, null),
          Text('Print Out'),
          celestialCheckbox.celestialCheckbox(
              "Cetak Otomatis Receipt pada waktu Pembayaran",
              orderController.logo.value,
              null),
          celestialCheckbox.celestialCheckbox(
              "Cetak captain order", orderController.logo.value, null),
        ],
      ),
    );
  }
}
