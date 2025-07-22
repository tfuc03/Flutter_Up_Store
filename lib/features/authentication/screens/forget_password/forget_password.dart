import 'package:e_commerce/common/widgets/button/elevated_button.dart';
import 'package:e_commerce/features/authentication/screens/forget_password/reset_password.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/style/padding.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// -----[Header]-----
              /// Title
              Text(UTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: USizes.spaceBtwItems / 2),
              /// SubTitle
              Text(UTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium),
              SizedBox(height: USizes.spaceBtwSections * 2),

              /// -----[Form]-----
              Column(
                children: [

                  /// Email
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: UTexts.email,
                      prefixIcon: Icon(Iconsax.direct_right)
                    ),
                  ),
                  SizedBox(height: USizes.spaceBtwItems),

                  /// Submit
                  UElevatedButton(onPressed: () => Get.to(() => ResetPasswordScreen()), child: Text(UTexts.submit))

                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
