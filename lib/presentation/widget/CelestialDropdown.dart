import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lunapos/presentation/controller/OrderController.dart';

class CelestialDropdown {
  OrderController orderController = Get.put(OrderController());
  Widget celestialDropdown(String dropdownValue) => DropdownButton<String>(
        value: dropdownValue,
        isExpanded: true,
        // icon: Icon(Icons.arrow_downward),
        // iconSize: 24,
        // elevation: 16,
        // style: TextStyle(color: Colors.deepPurple),
        // underline: Container(
        //   height: 2,
        //   color: Colors.deepPurpleAccent,
        // ),
        onChanged: (String newValue) {},
        items: <String>['One', 'Two', 'Free', 'Four']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      );
}
//   Widget celestialDropdown3(String dropdownValue) => DropdownButton(
//       // value: orderController.enumOrder,
//       // required: true,
//       strict: true,
//       // labelText: 'Account Name *',
//       // icon: Icon(Icons.account_balance),
//       items: orderController.enumOrder,
//       setter: (dynamic newValue) {
//         // accountname = newValue;
//       });
// }
