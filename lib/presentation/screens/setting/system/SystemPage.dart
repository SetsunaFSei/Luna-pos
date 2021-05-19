import 'package:flutter/material.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppIcon.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:lunapos/presentation/misc/AppStyle.dart';
import 'package:lunapos/presentation/widget/CelestialAppbar.dart';
import 'package:lunapos/presentation/widget/CelestialButton.dart';
import 'package:lunapos/presentation/widget/CelestialNavDrawer.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class SystemPage extends StatelessWidget {
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
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(flex: 1, child: Text('Mode Koneksi')),
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Plaza Indonesia'),
                LabelButton(
                  onPressed: () => {},
                  text: AppString.changeOutlet,
                  style: AppStyle.labelAuthKey,
                ),
              ],
            ),
          ),
          Flexible(flex: 1, child: Text('Singkron')),
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Server'),
                Text('Ganti ke Client'),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      Text('Terakhir Disingkronkan'),
                      Text('03/03/20020 - 15:33:05'),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: PrimaryButton(
                    text: AppString.syncText,
                    onPressed: () {},
                    color: AppColor.backgroundColor,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 5,
            child: PrettyQr(
                // image: AssetImage('images/twitter.png'),
                typeNumber: 3,
                size: 300,
                data: 'https://www.google.ru',
                errorCorrectLevel: QrErrorCorrectLevel.M,
                roundEdges: true),
          ),
          Text('Ip Address'),
          Text('192.168.1.6'),
        ],
      ),
    );
  }
}
