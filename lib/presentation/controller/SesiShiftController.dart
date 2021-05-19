import 'package:get/get.dart';

class SesiShiftController extends GetxController {
  final isStartShift = true.obs;
  final selectedDate = DateTime.now().obs;

  @override
  void onInit() {
    super.onInit();
  }

  setSelectedDate(DateTime value) {
    selectedDate(value);
  }
}
