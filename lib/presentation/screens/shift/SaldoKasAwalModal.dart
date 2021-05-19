import 'package:flutter/material.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:lunapos/presentation/misc/AppStyle.dart';
import 'package:lunapos/presentation/widget/CelestialButton.dart';
import 'package:lunapos/presentation/widget/CelestialText.dart';

class SaldoKasAwalModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailText = TextEditingController(text: '');
    CelestialText celestialText = new CelestialText();

    return Container(
      height: 200.0,
      width: 400.0,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: celestialText.celestialTextField("Rp 0", emailText),
          ),
          Row(
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
                  text: AppString.startShift,
                  onPressed: () {},
                  color: AppColor.primaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
