import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stationery_station/features/shop/screens/home/home.dart';
import 'package:stationery_station/features/shop/screens/store/store.dart';
import 'package:stationery_station/utils/constants/colors.dart';
import 'package:stationery_station/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = SsappHelperFunction.isDarkMode(context);

    return Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBar(
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) {
              controller.selectedIndex.value = index;
            },
            backgroundColor: darkMode ? SsappColors.black : Colors.white,
            indicatorColor: darkMode
                ? SsappColors.white.withOpacity(0.1)
                : SsappColors.black.withOpacity(0.1),
            destinations: [
              NavigationDestination(
                  icon: Icon(
                    Icons.home_outlined,
                    color: darkMode ? Colors.white : Colors.black,
                  ),
                  label: "Home"),
              NavigationDestination(
                  icon: Icon(
                    Icons.store_outlined,
                    color: darkMode ? Colors.white : Colors.black,
                  ),
                  label: "Store"),
              NavigationDestination(
                  icon: Icon(
                    Icons.favorite_border_outlined,
                    color: darkMode ? Colors.white : Colors.black,
                  ),
                  label: "WishList"),
              NavigationDestination(
                  icon: Icon(
                    Icons.person_outline,
                    color: darkMode ? Colors.white : Colors.black,
                  ),
                  label: "Profile"),
            ],
          ),
        ),
        body: Obx(() => controller.screens[controller.selectedIndex.value]));
  }
}

class NavigationController extends GetxController {
  var selectedIndex = 0.obs;
  var screens = [
    const HomeScreen(),
    const StoreScreen(),
    Container(color: Colors.red),
    Container(color: Colors.deepPurpleAccent),
  ];
}
