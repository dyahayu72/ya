import "package:get/get.dart";

class BookingController extends GetxController {
  //TODO: Implement BookingController
  var tabIndex = 0.obs;

  get phoneC => null;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
