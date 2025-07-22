import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/personalization/screens/address/address.dart';
import 'package:e_commerce/features/personalization/screens/profile/widgets/profile_primary_header.dart';
import 'package:e_commerce/features/personalization/screens/profile/widgets/settings_menu_tile.dart';
import 'package:e_commerce/features/personalization/screens/profile/widgets/user_profile_tile.dart';
import 'package:e_commerce/features/shop/screens/order/order.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Primary Header
            UProfilePrimaryHeader(),

            /// Details
            Padding(
              padding: const EdgeInsets.all(USizes.defaultSpace),
              child: Column(
                children: [
                  /// User Profile Details
                  UserProfileTile(),
                  SizedBox(height: USizes.spaceBtwItems),

                  /// Account Settings Heading
                  USectionHeading(title: 'Cài đặt tài khoản', showActionButton: false),

                  /// Settings Menu
                  SettingsMenuTile(
                      icon: Iconsax.safe_home,
                      title: 'Địa chỉ của tôi',
                      subtitle: 'Đặt địa chỉ giao hàng mua sắm',
                      onTap: () => Get.to(() => AddressScreen())),
                  SettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'Giỏ hàng',
                    subtitle: 'Thêm, xóa sản phẩm và chuyển đến trang thanh toán',
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                      icon: Iconsax.bag_tick,
                      title: 'Đơn hàng của tôi',
                      subtitle: 'Đơn hàng đang thực hiện và đã hoàn thành',
                      onTap: () => Get.to(() => OrderScreen())),
                  SizedBox(height: USizes.spaceBtwSections),

                  /// Logout
                  SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () {}, child: Text('Đăng xuất'))),
                  SizedBox(height: USizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
