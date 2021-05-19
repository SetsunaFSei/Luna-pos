import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lunapos/presentation/controller/RegisterController.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppImage.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:lunapos/presentation/misc/AppStyle.dart';
import 'package:lunapos/presentation/widget/CelestialButton.dart';
import 'package:lunapos/presentation/widget/CelestialImage.dart';
import 'package:lunapos/presentation/widget/CelestialText.dart';

class RegisterPage extends StatelessWidget {
  final RegisterController registerController = Get.put(RegisterController());
  @override
  Widget build(BuildContext context) {
    TextEditingController nameText = TextEditingController(text: '');
    TextEditingController emailText = TextEditingController(text: '');
    TextEditingController noHpText = TextEditingController(text: '');
    TextEditingController passwordText = TextEditingController(text: '');
    CelestialText celestialText = new CelestialText();
    CelestialImage celestialImage = new CelestialImage();

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: Container(
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: AppImage.bgWave,
          //     fit: BoxFit.cover,
          //   ),
          // ),
          child: Column(
            children: [
              celestialImage.celestialImage(
                  AppImage.logoNoImageWhite, 200, 200),
              Text(
                AppString.trial,
                style: AppStyle.labelTrial,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              child: Text('Buat Akun',
                                  style: AppStyle.labelCreateAccount)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: celestialText.celestialTextField(
                              'Nama Lengkap', nameText),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: celestialText.celestialTextField(
                              'Email', emailText),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: celestialText.celestialTextField(
                              'NoHp', noHpText),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: celestialText.celestialTextField(
                              'Password', passwordText),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: PrimaryButton(
                              text: 'Daftar',
                              color: AppColor.backgroundColor,
                              onPressed: () {}),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          AppString.haveAccount,
                          textAlign: TextAlign.right,
                          style: AppStyle.labelhaveAkun,
                        ),
                        LabelButton(
                          onPressed: () => {
                            registerController.onBackPress(),
                          },
                          text: AppString.masuk,
                          textAlign: TextAlign.left,
                          style: AppStyle.labelMasukButton,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text(AppString.copyRight),
            ],
          ),
        ),
      ),
    );
  }
}
