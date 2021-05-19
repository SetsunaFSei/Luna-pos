import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lunapos/presentation/controller/RegisterController.dart';
import 'package:lunapos/presentation/misc/AppImage.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:lunapos/presentation/widget/CelestialButton.dart';
import 'package:lunapos/presentation/widget/CelestialImage.dart';
import 'package:lunapos/presentation/widget/CelestialText.dart';

class SignUpUserPage extends StatelessWidget {
  final RegisterController registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    CelestialText celestialText = new CelestialText();
    CelestialImage celestialImage = new CelestialImage();
    TextEditingController emailText = TextEditingController(text: '');

    return Scaffold(
      body: Column(
        children: [
          celestialImage.celestialImage(AppImage.logoWhite, 200, 200),
          Text(AppString.trial),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(child: Text(AppString.createAkun)),
                  ),
                  celestialText.celestialTextField(
                      AppString.fullName, emailText),
                  celestialText.celestialTextField(AppString.email, emailText),
                  celestialText.celestialTextField(AppString.phone, emailText),
                  celestialText.celestialTextField(
                      AppString.password, emailText),
                  celestialText.celestialTextField(
                      AppString.referalCode, emailText),
                  PrimaryButton(
                      text: AppString.daftar,
                      onPressed: () {
                        registerController.onRegisterPress();
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
