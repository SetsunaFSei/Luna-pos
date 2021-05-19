import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lunapos/presentation/controller/PosController.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppIcon.dart';
import 'package:lunapos/presentation/misc/AppImage.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:lunapos/presentation/misc/AppStyle.dart';
import 'package:lunapos/presentation/screens/pos/ChartPage.dart';
import 'package:lunapos/presentation/screens/pos/PostOrderModal.dart';
import 'package:lunapos/presentation/screens/pos/PostTableModal.dart';
import 'package:lunapos/presentation/widget/CelestialAppbar.dart';
import 'package:lunapos/presentation/widget/CelestialButton.dart';
import 'package:lunapos/presentation/widget/CelestialImage.dart';
import 'package:lunapos/presentation/widget/CelestialNavDrawer.dart';
import 'package:lunapos/presentation/widget/CelestialText.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class PosPage extends StatelessWidget {
  // int get selectedIndex => null;

  // void onItemTapped(int index) {}
  // CelesetialNavBar celesetialNavBar = new CelesetialNavBar();

  @override
  Widget build(BuildContext context) {
    CelestialImage celestialImage = new CelestialImage();
    CelestialText celestialText = new CelestialText();
    // CelestialDialog celestialDialog = new CelestialDialog();
    TextEditingController emailText = TextEditingController(text: '');
    CelestialAppBar celestialAppBar = CelestialAppBar();
    PosController posController = Get.put(PosController());
    // Size size = MediaQuery.of(context).size;
    // int _selectedIndex = 0;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.silver,
        appBar: celestialAppBar.appBarStandardImage(null,
            celestialImage.celestialImage(AppImage.logoBlack, 100, 100), null),
        drawer: new Drawer(
          child: new NavDrawer(),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                      flex: 11,
                                      child: celestialText.celestialTextField(
                                          AppString.search, emailText)),
                                  Flexible(
                                    flex: 1,
                                    child: CelestialIconButton(
                                        onPressed: () {
                                          posController.scanQR();
                                        },
                                        size: 30,
                                        icon: AppIcon.scanner),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: LabelButton(
                                            onPressed: () => {
                                              showMaterialModalBottomSheet(
                                                expand: false,
                                                context: context,
                                                backgroundColor:
                                                    Colors.transparent,
                                                builder: (context) => Scaffold(
                                                  body: Column(
                                                    children: [
                                                      Flexible(
                                                          flex: 1,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 30),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                CelestialIconButton(
                                                                    onPressed:
                                                                        () {
                                                                      Navigator.of(
                                                                              context)
                                                                          .pop();
                                                                    },
                                                                    size: 30,
                                                                    icon: AppIcon
                                                                        .back),
                                                                Text(
                                                                    'Pilih Kategori'),
                                                                Text(''),
                                                              ],
                                                            ),
                                                          )),
                                                      Flexible(
                                                        flex: 12,
                                                        child: GridView.builder(
                                                            gridDelegate:
                                                                const SliverGridDelegateWithFixedCrossAxisCount(
                                                              crossAxisCount: 2,
                                                              childAspectRatio:
                                                                  (4 / 1),
                                                            ),
                                                            itemCount: 30,
                                                            itemBuilder:
                                                                (context,
                                                                    int index) {
                                                              return Card(
                                                                color: AppColor
                                                                    .whiteColor,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  side: BorderSide(
                                                                      width: 1,
                                                                      color: AppColor
                                                                          .borderColor),
                                                                ),
                                                                elevation: 2,
                                                                child: InkWell(
                                                                  onTap: () {
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop();
                                                                    // signInClienController.onUserPress();
                                                                  },
                                                                  child: Padding(
                                                                      padding: const EdgeInsets.all(8.0),
                                                                      child: Column(
                                                                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                        children: [
                                                                          Text(
                                                                              'Semua'),
                                                                        ],
                                                                      )),
                                                                ),
                                                              );
                                                            }),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            },
                                            text: 'Pilih Kategori',
                                          ),
                                        ),
                                        Expanded(
                                          child: LabelButton(
                                            onPressed: () => {},
                                            text: 'Semua (450)',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      CelestialIconButton(
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                    scrollable: true,
                                                    title: Text('Order',
                                                        textAlign:
                                                            TextAlign.center),
                                                    content: PosOrderModal(),
                                                  );
                                                });
                                          },
                                          color: AppColor.silver,
                                          tint: AppColor.blackColor,
                                          size: 30,
                                          icon: AppIcon.order),
                                      CelestialIconButton(
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return PostTableModal();
                                                });
                                          },
                                          color: AppColor.silver,
                                          size: 30,
                                          icon: AppIcon.table),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
              Flexible(
                flex: 8,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                  ),
                  child: Obx(() {
                    // return Text(customerController.datas.length.toString());
                    return ListView.builder(
                        itemCount: posController.datas.length ?? 0,
                        itemBuilder: (context, index) {
                          return Flexible(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, right: 8.0),
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () => {
                                        // signInClienController.onUserPress();
                                        showMaterialModalBottomSheet(
                                          expand: false,
                                          context: context,
                                          backgroundColor: Colors.transparent,
                                          builder: (context) => Container(
                                            // color: AppColor.primaryColor,
                                            height: 60,
                                            child: InkWell(
                                              onTap: () {
                                                showDialog(
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return ChartPage();
                                                    });
                                              },
                                              child: Card(
                                                color: AppColor.primaryColor,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft: Radius.circular(8),
                                                    topRight:
                                                        Radius.circular(8),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10.0,
                                                          right: 10.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Total',
                                                        style:
                                                            AppStyle.labelTotal,
                                                      ),
                                                      Text('Rp 20.000',
                                                          style: AppStyle
                                                              .labelTotal),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      },
                                      child: Row(
                                        children: [
                                          Flexible(
                                            flex: 1,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child:
                                                  celestialImage.celestialImage(
                                                      AppImage.placeholder,
                                                      80,
                                                      80),
                                            ),
                                          ),
                                          Flexible(
                                            flex: 4,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Aloe Jelly Drink',
                                                    style: AppStyle
                                                        .labelProductName,
                                                  ),
                                                  Text('Rp 20.000',
                                                      style:
                                                          AppStyle.labelPrice),
                                                  Text('SKU : ' + '43412221',
                                                      style: AppStyle.labelSku),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 20),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                                width: 1,
                                                color:
                                                    AppColor.borderColorList),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ));
                        });
                  }),
                ),
              )
            ],
          ),
        ),
        // celesetialNavBar.bottomNavBar(selectedIndex, _onItemTapped),
        // bottomNavigationBar: BottomNavigationBar(
        //   items: const <BottomNavigationBarItem>[
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       label: 'Home',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.business),
        //       label: 'Business',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.school),
        //       label: 'School',
        //     ),
        //   ],
        //   currentIndex: _selectedIndex,
        //   selectedItemColor: Colors.amber[800],
        //   onTap: _onItemTapped,
        // ),
      ),
    );
  }
}
