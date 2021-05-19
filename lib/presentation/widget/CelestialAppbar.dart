import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppIcon.dart';
import 'package:lunapos/presentation/misc/AppStyle.dart';
import 'package:lunapos/presentation/widget/CelestialButton.dart';
import 'package:lunapos/presentation/widget/CelestialText.dart';

class CelestialAppBar {
  CelestialText celestialText = new CelestialText();
  Widget appBar(String title, Icon icon, TextEditingController controller,
          GestureTapCallback onPressed) =>
      AppBar(
        backgroundColor: AppColor.primaryColor,
        title: celestialText.buildTextField(
            MaterialCommunityIcons.account_outline,
            "cari",
            false,
            false,
            controller),
        actions: [
          CelestialIconButton(onPressed: () => {}, icon: AppIcon.table),
          CelestialIconButton(onPressed: () => {}, icon: AppIcon.table),
          CelestialIconButton(onPressed: () => {}, icon: AppIcon.table)
        ],
      );

  Widget appBarProfile(String title, Icon icon, GestureTapCallback onPressed) =>
      AppBar(
        backgroundColor: AppColor.primaryColor,
        title: Text(title),
        actions: [
          CelestialIconButton(onPressed: () => {}, icon: AppIcon.table)
        ],
      );

  Widget appBarCustomer(
    String iconLeft,
    String title,
    String iconRight,
    Color color,
    Color tint,
    GestureTapCallback onPressed,
  ) =>
      AppBar(
        backgroundColor: color,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          title,
          style: AppStyle.labelTitle,
        ),
        centerTitle: true,
        // leading: CelestialIconButton(onPressed: () => {}, icon: AppIcon.table),
        // title: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     // CelestialIconButton(
        //     //     onPressed: () => {}, size: 30, icon: AppIcon.back),
        //     Center(
        //         child: Text(
        //       title,
        //       style: AppStyle.labelTitle,
        //     )),
        //     CelestialIconButton(
        //       onPressed: () => {},
        //       size: 20,
        //       icon: iconRight,
        //       tint: tint,
        //     ),
        //   ],
        // ),
        actions: [
          CelestialIconButton(
            onPressed: () => {},
            icon: iconRight,
            size: 20,
          )
        ],
      );

  Widget appBarStandard(String iconLeft, String title, Color color,
          GestureTapCallback onPressed) =>
      AppBar(
        backgroundColor: color,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        // leading: CelestialIconButton(onPressed: () => {}, icon: AppIcon.back),
        title: Center(
          child: Text(
            title,
            style: AppStyle.labelTitle,
          ),
        ),
      );

  Widget appBarStandardImage(
          Icon iconLeft, Widget image, GestureTapCallback onPressed) =>
      AppBar(
        backgroundColor: AppColor.whiteColor,
        title: Center(child: image),
        iconTheme: IconThemeData(color: AppColor.blackColor2),
      );
}
