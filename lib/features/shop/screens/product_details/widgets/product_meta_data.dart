import 'package:flutter/material.dart';
import '../../../../../common/widgets/custom_shapes/rounded_container.dart';
import '../../../../../common/widgets/images/circular_image.dart';
import '../../../../../common/widgets/texts/brand_title_with_verify_icon.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../common/widgets/texts/product_title_text.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/images.dart';
import '../../../../../utils/constants/sizes.dart';

class UProductMetaData extends StatelessWidget {
  const UProductMetaData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        /// Sale Tag, Sale Price, Actual Price And Share Button
        Row(
          children: [

            /// Sale Tag
            URoundedContainer(
              radius: USizes.sm,
              backgroundColor: UColors.yellow.withValues(alpha: 0.8),
              padding: const EdgeInsets.symmetric(horizontal: USizes.sm, vertical: USizes.xs),
              child: Text('20%', style: Theme.of(context).textTheme.labelLarge!.apply(color: UColors.black)),
            ),
            SizedBox(width: USizes.spaceBtwItems),

            /// Sale Price
            Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            SizedBox(width: USizes.spaceBtwItems),

            /// Actual Price
            UProductPriceText(price: '200', isLarge: true),
            Spacer(),

            /// Share Button
            IconButton(onPressed: (){}, icon: Icon(Icons.share))
          ],
        ),
        SizedBox(height: USizes.spaceBtwItems / 1.5),

        /// Product Title
        UProductTitleText(title: 'Apple iPhone 11'),
        SizedBox(height: USizes.spaceBtwItems / 1.5),

        /// Product Status
        Row(
          children: [
            UProductTitleText(title: 'Trạng thái'),
            SizedBox(width: USizes.spaceBtwItems),
            Text('Còn hàng', style: Theme.of(context).textTheme.titleMedium)
          ],
        ),
        SizedBox(height: USizes.spaceBtwItems / 1.5),

        /// Product Brand Image With Title
        Row(
          children: [

            /// Brand Image
            UCircularImage(
                padding: 0,
                image: UImages.appleLogo, width: 32.0, height: 32.0),
            SizedBox(width: USizes.spaceBtwItems),

            /// Brand Title
            UBrandTitleWithVerifyIcon(title: 'Apple')
          ],
        )


      ],
    );
  }
}