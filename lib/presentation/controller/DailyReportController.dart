import 'package:get/get.dart';

class DailyReportController extends GetxController {
  final logo = false.obs;
  final selectedDate = DateTime.now().obs;

  @override
  void onInit() {
    super.onInit();
  }

  setSelectedDate(DateTime value) {
    selectedDate(value);
  }
}
