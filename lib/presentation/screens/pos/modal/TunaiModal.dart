import 'package:flutter/material.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppString.dart';
import 'package:lunapos/presentation/misc/AppStyle.dart';
import 'package:lunapos/presentation/widget/CelestialButton.dart';

class TunaiModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      width: 400.0,
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 1,
                        child: PrimaryButton(
                          text: AppString.uangPass,
                          onPressed: () {},
                          textStyle: AppStyle.labelButtonPurple,
                          color: AppColor.whiteColor,
                        ),
                      ),
                      Divider(height: 8.0),
                      Flexible(
                        flex: 1,
                        child: PrimaryButton(
                          text: AppString.duaRibu,
                          onPressed: () {},
                          textStyle: AppStyle.labelButtonPurple,
                          color: AppColor.whiteColor,
                        ),
                      ),
                      Divider(height: 8.0),
                      Flexible(
                        flex: 1,
                        child: PrimaryButton(
                          text: AppString.sepuluhRibu,
                          onPressed: () {},
                          textStyle: AppStyle.labelButtonPurple,
                          color: AppColor.whiteColor,
                        ),
                      ),
                      Divider(height: 8.0),
                      Flexible(
                        flex: 1,
                        child: PrimaryButton(
                          text: AppString.limaPuluhRibu,
                          onPressed: () {},
                          textStyle: AppStyle.labelButtonPurple,
                          color: AppColor.whiteColor,
                        ),
                      ),
                      Divider(height: 8.0),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 1,
                        child: PrimaryButton(
                          text: AppString.seribu,
                          onPressed: () {},
                          textStyle: AppStyle.labelButtonPurple,
                          color: AppColor.whiteColor,
                        ),
                      ),
                      Divider(height: 8.0),
                      Flexible(
                        flex: 1,
                        child: PrimaryButton(
                          text: AppString.limaRibu,
                          onPressed: () {},
                          textStyle: AppStyle.labelButtonPurple,
                          color: AppColor.whiteColor,
                        ),
                      ),
                      Divider(height: 8.0),
                      Flexible(
                        flex: 1,
                        child: PrimaryButton(
                          text: AppString.duaPuluhRibu,
                          onPressed: () {},
                          textStyle: AppStyle.labelButtonPurple,
                          color: AppColor.whiteColor,
                        ),
                      ),
                      Divider(height: 8.0),
                      Flexible(
                        flex: 1,
                        child: PrimaryButton(
                          text: AppString.seratusRibu,
                          onPressed: () {},
                          textStyle: AppStyle.labelButtonPurple,
                          color: AppColor.whiteColor,
                        ),
                      ),
                      Divider(height: 8.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // PrimaryButton(
          //   text: AppString.clear,
          //   onPressed: () {},
          //   textStyle: AppStyle.labelButtonPurple,
          //   color: AppColor.whiteColor,
          // ),
          Flexible(
            flex: 1,
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
                    text: AppString.bayar,
                    onPressed: () {},
                    textStyle: AppStyle.labelButtonPurple,
                    color: AppColor.whiteColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
