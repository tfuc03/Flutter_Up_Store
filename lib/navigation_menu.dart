import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'features/personalization/screens/profile/profile.dart';
import 'features/shop/screens/home/home.dart';
import 'features/shop/screens/store/store.dart';
import 'features/shop/screens/wishlist/wishlist.dart';



class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    bool dark = UHelperFunctions.isDarkMode(context);

    return Scaffold(

      body: Obx(() => controller.screens[controller.selectedIndex.value]),
      /// -----[Navigation Menu]-----
      bottomNavigationBar: Obx(
        () => NavigationBar(
            elevation: 0,
            backgroundColor: dark ? UColors.dark : UColors.light,
            indicatorColor: dark ? UColors.light.withValues(alpha: 0.1) : UColors.dark.withValues(alpha: 0.1),
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) {
              controller.selectedIndex.value = index;
            },
            destinations: [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'Trang chủ'),
              NavigationDestination(icon: Icon(Iconsax.shop), label: 'Cửa hàng'),
              NavigationDestination(icon: Icon(Iconsax.heart), label: 'Yêu thích'),
              NavigationDestination(icon: Icon(Iconsax.user), label: 'Hồ sơ'),
            ]),
      ),
    );
  }
}

class NavigationController extends GetxController {
  static NavigationController get instance => Get.find();
  RxInt selectedIndex = 0.obs;


  List<Widget> screens = [HomeScreen(), StoreScreen(), WishlistScreen(), ProfileScreen()];
}
