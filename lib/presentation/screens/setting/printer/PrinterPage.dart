import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lunapos/presentation/controller/PrinterController.dart';
import 'package:lunapos/presentation/misc/AppImage.dart';
import 'package:lunapos/presentation/widget/CelestialAppbar.dart';
import 'package:lunapos/presentation/widget/CelestialImage.dart';
import 'package:lunapos/presentation/widget/CelestialNavDrawer.dart';

class PrinterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialAppBar celestialAppBar = new CelestialAppBar();
    PrinterController printerController = Get.put(PrinterController());
    CelestialImage celestialImage = new CelestialImage();

    //     PrinterBluetoothManager _printerManager = PrinterBluetoothManager();
    // List<PrinterBluetooth> _devices = [];
    // String _devicesMsg;
    // BluetoothManager bluetoothManager = BluetoothManager.instance;

    return Scaffold(
      // appBar: celestialAppBar.appBarStandard(
      //     Icon(Icons.search), AppString.companyTitle, null),

      appBar: celestialAppBar.appBarStandardImage(null,
          celestialImage.celestialImage(AppImage.logoBlack, 100, 100), null),
      drawer: new Drawer(
        child: new NavDrawer(),
      ),
      body: Column(
        children: [
          Flexible(
              flex: 1,
              child: Obx(
                () => printerController.devices.isEmpty
                    ? Center(
                        child: Text(
                            printerController.devicesMsg.value ?? 'no devices'))
                    : ListView.builder(
                        itemCount: printerController.devices.length,
                        itemBuilder: (c, i) {
                          return ListTile(
                            leading: Icon(Icons.print),
                            title: Text(printerController.devices[i].name),
                            subtitle:
                                Text(printerController.devices[i].address),
                            onTap: () {
                              printerController.startPrint(
                                  context, printerController.devices[i]);
                            },
                          );
                        },
                      ),
              ))
          // PrimaryButton(
          //     text: 'Test Printer',
          //     onPressed: () {
          //       // _printerManager.startScan(Duration(seconds: 2));
          //       // _printerManager.scanResults.listen((val) {
          //       //   print(val); // get all printer device
          //       //   _devices = val;
          //       //   // get printer devices
          //       //   if (_devicesMsg.isEmpty) _devicesMsg = "No Devices";
          //       //   print("_devices = ${_devices[0].name}");
          //       // });
          //     }),
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: _devices.length,
          //     itemBuilder: (c, i) {
          //       return ListTile(
          //         leading: Icon(Icons.print),
          //         title: Text(_devices[i].name),
          //         subtitle: Text(_devices[i].address),
          //         onTap: () {
          //
          //         },
          //       );
          //     },
          //   ),
          // ),
          // _devices.isEmpty
          //     ? Center(child: Text(_devicesMsg ?? ''))
          //     : ListView.builder(
          //         itemCount: _devices.length,
          //         itemBuilder: (c, i) {
          //           return ListTile(
          //             leading: Icon(Icons.print),
          //             title: Text(_devices[i].name),
          //             subtitle: Text(_devices[i].address),
          //             onTap: () {
          //               printerController.startPrint(context, _devices[i]);
          //             },
          //           );
          //         },
          //       ),
          // Text('Tampilan Awal'),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Flexible(
          //         flex: 4, child: celestialDropdown.celestialDropdown("One")),
          //     Flexible(
          //         flex: 1,
          //         child: PrimaryButton(
          //             text: 'Test Printer',
          //             onPressed: () {
          //               printerController.startPrint(context, _devices[i]);
          //             })),
          //   ],
          // ),
          // Text('Captain Order'),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Flexible(
          //         flex: 4, child: celestialDropdown.celestialDropdown("One")),
          //     Flexible(
          //         flex: 1,
          //         child: PrimaryButton(text: 'Test Printer', onPressed: () {})),
          //   ],
          // ),
        ],
      ),
    );
  }
}
