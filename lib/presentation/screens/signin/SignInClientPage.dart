import 'package:flutter/material.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppImage.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:lunapos/presentation/misc/AppStyle.dart';
import 'package:lunapos/presentation/widget/CelestialGridView.dart';
import 'package:lunapos/presentation/widget/CelestialImage.dart';

class SignClientPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialGridView celestialGridView = CelestialGridView();
    CelestialImage celestialImage = new CelestialImage();

    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColor.backgroundColor,
          body: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(bottom: 10.0, top: 30.0, right: 20.0),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(AppString.changeOutlet,
                        style: AppStyle.labelOutletName)),
              ),
              Flexible(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: celestialImage.celestialImage(
                        AppImage.logoName, 120, 120),
                  )),
              Flexible(
                  flex: 1,
                  child: Text(
                    AppString.login,
                    style: AppStyle.labelLogin,
                  )),
              Flexible(
                  flex: 9,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: celestialGridView.celestialGridView(context),
                  )),
            ],
          )),
    );
  }
}
