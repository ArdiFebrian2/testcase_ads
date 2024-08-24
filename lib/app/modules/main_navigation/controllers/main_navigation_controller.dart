import 'package:get/get.dart';

class MainNavigationController extends GetxController {
  // Observable variable to track the selected index
  RxInt selectedIndex = 0.obs;

  // Method to change the selected index
  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
