import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/button/elevated_button.dart';
import 'package:e_commerce/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../checkout/checkout.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// ------[AppBar]------
      appBar: UAppBar(showBackArrow: true, title: Text('Giỏ hàng', style: Theme.of(context).textTheme.headlineMedium)),

      /// ------[Body]------
      body: Padding(
        padding: UPadding.screenPadding,
        child: UCartItems(),
      ),

      /// ------[BottomNavigation]------
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(USizes.defaultSpace),
        child: UElevatedButton(onPressed: () => Get.to(() => CheckoutScreen()), child: Text('Thanh toán \19.110.000đ')),
      ),
    );
  }
}




