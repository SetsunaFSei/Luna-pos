import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lunapos/presentation/controller/SignClientController.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppStyle.dart';
import 'package:lunapos/presentation/widget/CelestialImage.dart';

class CelestialGridView {
  CelestialImage celestialImage = new CelestialImage();
  final SignInClienController signInClienController =
      Get.put(SignInClienController());

  Widget celestialGridView(BuildContext context) => MediaQuery.removePadding(
        // context: context,
        removeTop: true,
        context: context,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: 10,
            itemBuilder: (context, int index) {
              return Card(
                color: AppColor.buttonBackground,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: BorderSide(width: 1, color: AppColor.borderColor),
                ),
                elevation: 2,
                child: InkWell(
                  onTap: () {
                    signInClienController.onUserPress();
                  },
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: CircleAvatar(
                            radius: 30.0,
                            backgroundImage:
                                NetworkImage('https://via.placeholder.com/150'),
                            backgroundColor: Colors.transparent,
                          )),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                'Bangsa The Night',
                                textAlign: TextAlign.center,
                                style: AppStyle.labelOutletName,
                              ),
                            ),
                          )),
                        ],
                      )),
                ),
              );
            }),
      );
}
