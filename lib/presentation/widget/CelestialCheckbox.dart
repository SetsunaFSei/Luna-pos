import 'package:flutter/material.dart';
import 'package:lunapos/presentation/controller/TemplateController.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';

class CelestialCheckbox {
  Widget celestialCheckbox(
          String title, bool value, TemplateController templateController) =>
      CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(title),
        value: value,
        // onChanged: (bool value) => onCountSelected(),
        onChanged: (bool value) => templateController.logo.value = value,
        activeColor: AppColor.activeColor,
        checkColor: AppColor.activeColor,
      );
}
