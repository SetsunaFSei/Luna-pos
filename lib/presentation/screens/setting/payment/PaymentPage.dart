import 'package:flutter/material.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppIcon.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:lunapos/presentation/widget/CelestialAppbar.dart';
import 'package:lunapos/presentation/widget/CelestialNavDrawer.dart';

class PaymentPage extends StatelessWidget {
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
        children: [
          Text('Total'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Tunai'),
              Text('Kartu Kredit'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Kartu Debit'),
              Text('Go-Pay'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Piri Pay'),
              Text('Luna Pay'),
            ],
          ),
        ],
      ),
    );
  }
}
