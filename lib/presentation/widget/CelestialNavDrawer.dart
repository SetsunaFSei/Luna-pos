import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lunapos/presentation/controller/NavDrawerController.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppIcon.dart';
import 'package:lunapos/presentation/misc/AppImage.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:lunapos/presentation/misc/AppStyle.dart';
import 'package:lunapos/presentation/widget/CelestialImage.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialImage celestialImage = new CelestialImage();
    NavDrawerController navDrawerController = Get.put(NavDrawerController());
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                celestialImage.celestialIcon(
                    AppIcon.headerOutlet, 80.0, AppColor.darkPurple),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          'Bangsa The Night',
                          style: AppStyle.labelTotal,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          'Luna Coffee Shop',
                          textAlign: TextAlign.start,
                          style: AppStyle.labelOutletNav,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            celestialImage.celestialIcon(
                                AppIcon.location, 15.0, AppColor.darkPurple),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text(
                                'Plaza Indah Plaza',
                                textAlign: TextAlign.start,
                                style: AppStyle.labelOutletNav,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: AppColor.backgroundColor,
              // image: DecorationImage(
              //     fit: BoxFit.fill,
              //     image: AssetImage(AppImage.logoNoImageWhite))
            ),
          ),
          ListTile(
              leading: Image.asset(
                AppIcon.pos,
                color: AppColor.darkPurple,
                height: 25,
                width: 25,
              ),
              title: Text(AppString.pos),
              onTap: () => {Get.offNamed('/pos')}),
          ListTile(
              leading: Image.asset(
                AppIcon.order,
                color: AppColor.darkPurple,
                height: 25,
                width: 25,
              ),
              title: Text(AppString.order),
              onTap: () => {Get.offNamed('/order')}),
          ListTile(
              leading: Image.asset(
                AppIcon.product,
                color: AppColor.darkPurple,
                height: 25,
                width: 25,
              ),
              title: Obx(() => !navDrawerController.isProduct.value
                  ? Text(AppString.product)
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text(AppString.product),
                        ListTile(
                            title: Text(AppString.product),
                            onTap: () => navDrawerController.isProduct.value =
                                !navDrawerController.isProduct.value),
                        ListTile(
                            title: Text(AppString.daftarProduct),
                            onTap: () => {Get.offNamed('/product')}),
                        ListTile(
                            title: Text(AppString.favoriteProduct),
                            onTap: () => {Get.offNamed('/product-favorite')}),
                        ListTile(
                            title: Text(AppString.stockProduct),
                            onTap: () => {Get.offNamed('/product-stock')}),
                      ],
                    )),
              onTap: () => {
                    navDrawerController.isProduct.value =
                        !navDrawerController.isProduct.value
                  }),
          ListTile(
              leading: Image.asset(
                AppIcon.pelanggan,
                color: AppColor.darkPurple,
                height: 25,
                width: 25,
              ),
              title: Text(AppString.customer),
              onTap: () => {Get.offNamed('/customer')}),
          ListTile(
              leading: Image.asset(
                AppIcon.shift,
                color: AppColor.darkPurple,
                height: 25,
                width: 25,
              ),
              title: Text(AppString.shift),
              onTap: () => {Get.offNamed('/shift')}),
          // ListTile(
          //     leading: Image.asset(
          //       AppIcon.laporan,
          //       color: AppColor.darkPurple,
          //       height: 25,
          //       width: 25,
          //     ),
          //     title: Text(AppString.laporan),
          //     onTap: () => {Get.offNamed('/laporan')}),

          ListTile(
              leading: Image.asset(
                AppIcon.laporan,
                color: AppColor.darkPurple,
                height: 25,
                width: 25,
              ),
              title: Column(
                children: [
                  ExpansionTile(
                    title: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(AppString.laporan)),
                    children: [
                      ListTile(
                          title: Text(AppString.dailyReport),
                          onTap: () => {Get.offNamed('/daily-report')}),
                      ListTile(
                          title: Text(AppString.sesiShift),
                          onTap: () => {Get.offNamed('/sesi-shift')}),
                      ListTile(
                          title: Text(AppString.transactionLog),
                          onTap: () => {Get.offNamed('/transaction-log')}),
                    ],
                  ),
                ],
              ),
              onTap: () => {}),

          ListTile(
              leading: Image.asset(
                AppIcon.setting,
                color: AppColor.darkPurple,
                height: 25,
                width: 25,
              ),
              title: Column(
                children: [
                  ExpansionTile(
                    title: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(AppString.pengaturan)),
                    children: [
                      ListTile(
                          title: Text(AppString.umum),
                          onTap: () => {Get.offNamed('/umum')}),
                      ListTile(
                          title: Text(AppString.order),
                          onTap: () => {Get.offNamed('/order-template')}),
                      ListTile(
                          title: Text(AppString.template),
                          onTap: () => {Get.offNamed('/template')}),
                      ListTile(
                          title: Text(AppString.printer),
                          onTap: () => {Get.offNamed('/printer')}),
                      ListTile(
                          title: Text(AppString.sistem),
                          onTap: () => {Get.offNamed('/system')}),
                      ListTile(
                          title: Text(AppString.akun),
                          onTap: () => {Get.offNamed('/akun')}),
                    ],
                  ),
                ],
              ),
              onTap: () => {}),
          ListTile(
            leading: Image.asset(
              AppIcon.logout,
              color: AppColor.darkPurple,
              height: 25,
              width: 25,
            ),
            title: Text('Logout'),
            onTap: () => {Get.offAllNamed("/")},
          ),
          Divider(),
        ],
      ),
    );
  }
}
