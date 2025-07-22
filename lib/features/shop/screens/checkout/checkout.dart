import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/rounded_container.dart';
import 'package:e_commerce/common/widgets/screens/success_screen.dart';
import 'package:e_commerce/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:e_commerce/navigation_menu.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/button/elevated_button.dart';
import '../../../../common/widgets/textfields/promo_code.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -----[AppBar]-----
      appBar:
          UAppBar(showBackArrow: true, title: Text('Kiểm tra đơn hàng', style: Theme.of(context).textTheme.headlineSmall)),

      /// -----[Body]-----
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              /// Items
              UCartItems(showAddRemoveButtons: false),
              SizedBox(height: USizes.spaceBtwSections),

              /// Promo code - TextField
              UPromoCodeField(),
              SizedBox(height: USizes.spaceBtwSections),

              /// Billing Section
              URoundedContainer(
                showBorder: true,
                padding: EdgeInsets.all(USizes.md),
                backgroundColor: Colors.transparent,
                child: Column(
                  children: [
                    /// Amount
                    UBillingAmountSection(),
                    SizedBox(height: USizes.spaceBtwItems),

                    /// Payment
                    UBillingPaymentSection(),
                    SizedBox(height: USizes.spaceBtwItems),

                    /// Address
                    UBillingAddressSection()
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      /// ------[BottomNavigation]------
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(USizes.defaultSpace),
        child: UElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
                title: 'Thanh toán thành công!',
                subTitle: 'Đơn hàng của bạn sẽ sớm được giao!',
                image: UImages.successfulPaymentIcon, 
                onTap: () => Get.offAll(() => NavigationMenu()))),
            child: Text('Thanh toán \19.110.000đ')),
      ),
    );
  }
}
