import 'dart:typed_data';
import 'package:esc_pos_bluetooth/esc_pos_bluetooth.dart';
import 'package:esc_pos_utils/esc_pos_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bluetooth_basic/flutter_bluetooth_basic.dart';
import 'package:get/get.dart';

class PrinterController extends GetxController {
  final logo = false.obs;
  PrinterBluetoothManager _printerManager = PrinterBluetoothManager();
  BluetoothManager bluetoothManager = BluetoothManager.instance;
  RxList devices = [].obs;
  final RxString devicesMsg = "".obs;

  @override
  void onInit() {
    super.onInit();
    _printerManager.startScan(Duration(seconds: 2));
    _printerManager.scanResults.listen((val) {
      print('vale : $val');
      setdevices(val);
      // devices = val;
      if (devicesMsg.isEmpty) setdevicesMsg("No Devices");
    });
  }

  setdevices(List<PrinterBluetooth> value) {
    devices(value);
  }

  setdevicesMsg(String value) {
    devicesMsg(value);
  }

  void onLogoCheck(bool status) {
    logo(status);
  }

  Future<void> startPrint(
      BuildContext context, PrinterBluetooth printer) async {
    _printerManager.selectPrinter(printer);
    final result =
        await _printerManager.printTicket(await _ticket(PaperSize.mm80));
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        content: Text(result.msg),
      ),
    );
  }

  Future<Ticket> _ticket(PaperSize paper) async {
    final ticket = Ticket(paper);
    int total = 0;

    // Image assets
    final ByteData data = await rootBundle.load('assets/Images/store.png');
    final Uint8List bytes = data.buffer.asUint8List();
    // final Image image = decodeImage(bytes);
    // ticket.image(image);
    ticket.text(
      'TOKO KU',
      styles: PosStyles(
          align: PosAlign.center,
          height: PosTextSize.size2,
          width: PosTextSize.size2),
      linesAfter: 1,
    );

    // for (var i = 0; i < widget.data.length; i++) {
    //   total += widget.data[i]['total_price'];
    //   ticket.text(widget.data[i]['title']);
    //   ticket.row([
    //     PosColumn(
    //         text: '${widget.data[i]['price']} x ${widget.data[i]['qty']}',
    //         width: 6),
    //     PosColumn(text: 'Rp ${widget.data[i]['total_price']}', width: 6),
    //   ]);
    // }

    ticket.feed(1);
    ticket.row([
      PosColumn(text: 'Total', width: 6, styles: PosStyles(bold: true)),
      PosColumn(text: 'Rp $total', width: 6, styles: PosStyles(bold: true)),
    ]);
    ticket.feed(2);
    ticket.text('Thank You',
        styles: PosStyles(align: PosAlign.center, bold: true));
    ticket.cut();

    return ticket;
  }
}
