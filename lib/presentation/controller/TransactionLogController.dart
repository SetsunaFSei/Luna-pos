import 'package:get/get.dart';

class TransactionLogController extends GetxController {
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
