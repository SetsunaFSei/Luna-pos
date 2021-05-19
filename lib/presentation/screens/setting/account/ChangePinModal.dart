import 'package:flutter/material.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:lunapos/presentation/misc/AppStyle.dart';
import 'package:lunapos/presentation/widget/CelestialButton.dart';
import 'package:lunapos/presentation/widget/CelestialText.dart';

class ChangePinModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialText celestialText = new CelestialText();
    TextEditingController emailText = TextEditingController(text: '');

    return Container(
      height: 500.0,
      width: 400.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(AppString.oldPin),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child:
                celestialText.celestialTextField(AppString.oldPin, emailText),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(AppString.newPin),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                celestialText.celestialTextField(AppString.newPin, emailText),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(AppString.confirmNewPin),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: celestialText.celestialTextField(
                AppString.confirmNewPin, emailText),
          ),
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 1,
                    child: PrimaryButton(
                      text: AppString.batal,
                      onPressed: () {},
                      textStyle: AppStyle.labelButtonPurple,
                      color: AppColor.whiteColor,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: PrimaryButton(
                      text: AppString.simpan,
                      onPressed: () {},
                      textStyle: AppStyle.labelButtonPurple,
                      color: AppColor.whiteColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
