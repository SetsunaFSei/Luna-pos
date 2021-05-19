import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lunapos/presentation/controller/LoginController.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppIcon.dart';
import 'package:lunapos/presentation/misc/AppImage.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:lunapos/presentation/misc/AppStyle.dart';
import 'package:lunapos/presentation/widget/CelestialButton.dart';
import 'package:lunapos/presentation/widget/CelestialImage.dart';
import 'package:lunapos/presentation/widget/CelestialText.dart';

class LoginPage extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    CelestialText celestialText = new CelestialText();
    CelestialImage celestialImage = new CelestialImage();
    TextEditingController authenticationText = TextEditingController(text: '');
    TextEditingController emailText = TextEditingController(text: '');
    TextEditingController passwordText = TextEditingController(text: '');

    return SafeArea(
      child: Scaffold(
        // backgroundColor: AppColor.backgroundColor,
        body: Container(
          height: double.infinity,
          // width: height,
          decoration: BoxDecoration(
            color: AppColor.backgroundColor,
            image: DecorationImage(
              image: new AssetImage(AppImage.bgWave),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 60.0, 0, 20.0),
                  child: Column(
                    children: [
                      celestialImage.celestialImage(
                          AppImage.logoWhite, 150, 150),
                      Text(
                        AppString.wellcome,
                        style: AppStyle.labelWellcome,
                      )
                    ],
                  )),
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
                        child: Container(
                            child: Text(
                          AppString.masuk,
                          style: AppStyle.labelMasuk,
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Obx(
                          () => loginController.isAuth.value
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: celestialText.celestialTextField(
                                      AppString.authKey, authenticationText),
                                )
                              : Container(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: celestialText.celestialTextField(
                                            AppString.email, emailText),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: celestialText.celestialTextField(
                                            AppString.password, passwordText),
                                      ),
                                    ],
                                  ),
                                ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: PrimaryButton(
                            text: AppString.masuk,
                            color: AppColor.backgroundColor,
                            onPressed: () {
                              loginController.onLoginPress();
                            }),
                      ),
                      Container(
                        child: Obx(() => Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  loginController.isAuth.value
                                      ? Row(
                                          children: [
                                            celestialImage.celestialImage(
                                                AppIcon.key, 20, 20),
                                            LabelButton(
                                              onPressed: () => {
                                                loginController
                                                    .setIsAuth(false),
                                              },
                                              text: AppString.authKey,
                                              style: AppStyle.labelAuthKey,
                                            ),
                                          ],
                                        )
                                      : LabelButton(
                                          onPressed: () => {
                                            loginController.setIsAuth(true),
                                          },
                                          text: AppString.masukanEmail,
                                          style: AppStyle.labelAuthKey,
                                        ),
                                  LabelButton(
                                    onPressed: () => {
                                      loginController.onForgotPasswordPress(),
                                    },
                                    text: AppString.lupaPassword,
                                    // colors: AppColor.blackColor2,
                                    style: AppStyle.labelForgotPassword,
                                  )
                                ],
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  AppString.belumPunyaAkun,
                  style: AppStyle.labelbelumPunyaAkun,
                ),
              ),
              LabelButton(
                onPressed: () => {
                  loginController.onRegisterPress(),
                },
                text: AppString.createAkun,
                // colors: Colors.purple[900],
                style: AppStyle.labelcreateAkun,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  AppString.copyRight,
                  style: AppStyle.labelcopyRight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
