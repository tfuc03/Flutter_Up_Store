import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/features/personalization/screens/address/widgets/single_address.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'add_new_address.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -----[AppBar]-----
      appBar: UAppBar(
        showBackArrow: true,
        title: Text('Địa chỉ', style: Theme.of(context).textTheme.headlineMedium),
      ),

      /// -----[Body]-----
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              USingleAddress(
                isSelected: true,
              ),
              SizedBox(height: USizes.spaceBtwItems),
              USingleAddress(
                isSelected: false,
              ),
            ],
          ),
        ),
      ),

      /// -----[FloatingActionButton]-----
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => AddNewAddressScreen()),
        backgroundColor: UColors.primary,
        child: Icon(Iconsax.add),
      ),
    );
  }
}
