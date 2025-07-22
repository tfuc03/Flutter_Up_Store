import 'package:e_commerce/common/widgets/custom_shapes/rounded_container.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class UBillingPaymentSection extends StatelessWidget {
  const UBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Column(
      children: [

        /// [Text] - Payment Method
        USectionHeading(title: 'Phương thức thanh toán', buttonTitle: 'Thay đổi', onPressed: (){}),
        SizedBox(height: USizes.spaceBtwItems / 2),

        Row(
          children: [

            /// Payment logo
            URoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? UColors.light : UColors.white,
              padding: EdgeInsets.all(USizes.sm),
              child: Image(image: AssetImage(UImages.googlePay),fit: BoxFit.contain),
            ),
            SizedBox(width: USizes.spaceBtwItems / 2),

            /// Payment Name
            Text('Google Pay', style: Theme.of(context).textTheme.bodyLarge,)
          ],
        )
      ],
    );
  }
}
