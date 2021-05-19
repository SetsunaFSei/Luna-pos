import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:lunapos/presentation/misc/AppColor.dart';

class CelestialBotomLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border(
          // top: BorderSide(width: 16.0, color: Colors.lightBlue.shade50),
          bottom: BorderSide(width: 1, color: AppColor.blackColor2),
        ),
      ),
    );
  }
}

// class CelestialDashLine extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(8.0),
//       decoration: BoxDecoration(
//         border: Border(
//           // top: BorderSide(width: 16.0, color: Colors.lightBlue.shade50),
//           bottom: BorderSide(
//               width: 1,
//               color: AppColor.blackColor2,
//               style: BorderStyle.s(1.0)),
//         ),
//       ),
//     );
//   }
// }

class CelestialDashLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DottedLine(
      direction: Axis.horizontal,
      lineLength: double.infinity,
      lineThickness: 1.0,
      dashLength: 4.0,
      dashColor: Colors.black,
      dashRadius: 0.0,
      dashGapLength: 4.0,
      dashGapColor: Colors.transparent,
      dashGapRadius: 0.0,
    );
  }
}

// Divider(height: 10.0, color: Theme.of(context).primaryColor),
