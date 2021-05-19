import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:lunapos/presentation/controller/OrderController.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';
import 'package:lunapos/presentation/misc/AppIcon.dart';
import 'package:lunapos/presentation/widget/CelestialImage.dart';

class PosOrderModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialImage celestialImage = new CelestialImage();
    OrderController orderController = Get.put(OrderController());

    return Container(
      height: 300.0,
      width: 400.0,
      child: Column(
        children: [
          Flexible(
            flex: 3,
            child: Obx(() {
              return ListView.builder(
                  shrinkWrap: true,
                  itemCount: orderController.datas.length ?? 0,
                  itemBuilder: (BuildContext context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '#100521-1',
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                flex: 1,
                                child: celestialImage.celestialIcon(
                                    AppIcon.pelanggan,
                                    15.0,
                                    AppColor.darkPurple),
                              ),
                              Flexible(flex: 1, child: Text('10/05/2021')),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                flex: 1,
                                child: celestialImage.celestialIcon(
                                    AppIcon.table, 15.0, AppColor.darkPurple),
                              ),
                              Flexible(flex: 1, child: Text('Rp 5.250')),
                            ],
                          ),
                        ),
                      ],
                    );
                  });
            }),
          )
        ],
      ),
    );
  }
}
