import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../cart/views/cart_view.dart';
import '../../category/views/category_view.dart';
import '../../home/views/home_view.dart';
import '../../notification/views/notification_view.dart';
import '../../profile/views/profile_view.dart';
import '../controllers/main_navigation_controller.dart';

class MainNavigationView extends GetView<MainNavigationController> {
  const MainNavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    final MainNavigationController controller = Get.find();

    return Scaffold(
      body: Obx(() {
        switch (controller.selectedIndex.value) {
          case 0:
            return HomeView();
          case 1:
            return NotificationView();
          case 2:
            return CategoryView();
          case 3:
            return CartView();
          case 4:
            return ProfileView();
          default:
            return MainNavigationView(); // Default view in case of an invalid index
        }
      }),
      bottomNavigationBar: Obx(
        () => BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 6.0,
          child: Container(
            height: 72, // Height of the BottomAppBar
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  iconSize: 50.0, // Set icon size
                  icon: Image.asset(
                    'assets/images/home.png',
                    color: controller.selectedIndex.value == 0
                        ? Colors.teal
                        : Colors.black,
                    width: 20.0,
                    height: 30.0,
                  ),
                  onPressed: () => controller.changeIndex(0),
                ),
                IconButton(
                  iconSize: 30.0, // Set icon size
                  icon: Stack(
                    children: [
                      Image.asset(
                        'assets/images/notif.png',
                        color: controller.selectedIndex.value == 1
                            ? Colors.teal
                            : Colors.black,
                        width: 30.0,
                        height: 30.0,
                      ),
                      Positioned(
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 12,
                            minHeight: 12,
                          ),
                          child: const Text(
                            '.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  onPressed: () => controller.changeIndex(1),
                ),
                IconButton(
                  iconSize: 35.0, // Different size for the center icon
                  icon: Icon(
                    Icons.add_box,
                    color: controller.selectedIndex.value == 2
                        ? Color(0xFF0F3759)
                        : Colors.black,
                  ),
                  onPressed: () => controller.changeIndex(2),
                ),
                IconButton(
                  iconSize: 30.0, // Set icon size
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                    color: controller.selectedIndex.value == 3
                        ? Colors.teal
                        : Colors.black,
                  ),
                  onPressed: () => controller.changeIndex(3),
                ),
                IconButton(
                  iconSize: 30.0, // Set icon size
                  icon: Icon(
                    Icons.person_2_outlined,
                    color: controller.selectedIndex.value == 4
                        ? Colors.teal
                        : Colors.black,
                  ),
                  onPressed: () => controller.changeIndex(4),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
