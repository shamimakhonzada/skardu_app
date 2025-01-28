import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:skardu_app/features/shop/screens/home.dart';
import 'package:skardu_app/utils/constants/color.dart';
import 'package:skardu_app/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = SkdHelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          backgroundColor: darkMode ? SkdColors.black : SkdColors.white,
          indicatorColor: darkMode
              ? SkdColors.white.withValues(alpha: 0.1)
              : SkdColors.black.withValues(alpha: 0.1),
          animationDuration: Duration(milliseconds: 1500),
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Shore'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    HomeScreen(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.deepPurple,
    ),
    Container(
      color: Colors.orange,
    )
  ];
}
