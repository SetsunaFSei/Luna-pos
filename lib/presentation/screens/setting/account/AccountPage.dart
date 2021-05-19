import 'package:flutter/material.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppIcon.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:lunapos/presentation/misc/AppStyle.dart';
import 'package:lunapos/presentation/widget/CelestialAppbar.dart';
import 'package:lunapos/presentation/widget/CelestialButton.dart';
import 'package:lunapos/presentation/widget/CelestialCustom.dart';
import 'package:lunapos/presentation/widget/CelestialNavDrawer.dart';

import 'ChangePinModal.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Nama', style: AppStyle.labelName),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Bangsa The Night',
              style: AppStyle.labelAccountName,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CelestialBotomLine(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 60.0, right: 60.0),
            child: PrimaryButton(
                text: 'Ubah Pin',
                color: AppColor.backgroundColor,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          scrollable: true,
                          title: Text('Ubah Pin', textAlign: TextAlign.center),
                          content: ChangePinModal(),
                        );
                      });
                }),
          ),
        ],
      ),
    );
  }
}
