import 'package:flutter/material.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppIcon.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:lunapos/presentation/misc/AppStyle.dart';
import 'package:lunapos/presentation/widget/CelestialAppbar.dart';
import 'package:lunapos/presentation/widget/CelestialDropdown.dart';

class PostTableModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialAppBar celestialAppBar = CelestialAppBar();
    CelestialDropdown celestialDropdown = new CelestialDropdown();

    return Scaffold(
      appBar: celestialAppBar.appBarStandard(
          AppIcon.back, AppString.table, AppColor.whiteColor, null),
      body: Column(
        children: [
          Flexible(flex: 2, child: celestialDropdown.celestialDropdown("One")),
          Flexible(
            flex: 10,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: (4 / 3),
                ),
                itemCount: 7,
                itemBuilder: (context, int index) {
                  return Card(
                    color: AppColor.whiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: BorderSide(width: 1, color: AppColor.borderColor),
                    ),
                    elevation: 2,
                    child: InkWell(
                      onTap: () {
                        // signInClienController.onUserPress();
                      },
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '101',
                                textAlign: TextAlign.center,
                                style: AppStyle.labelPrice,
                              ),
                            ],
                          )),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
