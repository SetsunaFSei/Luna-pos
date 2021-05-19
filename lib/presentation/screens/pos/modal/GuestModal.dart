import 'package:flutter/material.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:lunapos/presentation/misc/AppStyle.dart';
import 'package:lunapos/presentation/widget/CelestialButton.dart';
import 'package:lunapos/presentation/widget/CelestialText.dart';

class GuestModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailText = TextEditingController(text: '');
    CelestialText celestialText = new CelestialText();

    return Scaffold(
      body: Column(
        children: [
          Text('Masukan Guest'),
          celestialText.celestialTextField(AppString.email, emailText),
          Row(
            children: [
              PrimaryButton(
                text: AppString.printBill,
                onPressed: () {},
                textStyle: AppStyle.labelButtonPurple,
                color: AppColor.whiteColor,
              ),
            ],
          ),
          PrimaryButton(
              text: AppString.bayar,
              onPressed: () {},
              color: AppColor.backgroundColor),
        ],
      ),
    );
  }
}
