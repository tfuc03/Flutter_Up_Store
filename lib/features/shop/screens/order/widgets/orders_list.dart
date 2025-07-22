
import 'package:e_commerce/common/widgets/custom_shapes/rounded_container.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';

class UOrdersListItems extends StatelessWidget {
  const UOrdersListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(height: USizes.spaceBtwItems),
      itemCount: 10,
      itemBuilder: (context, index) {
      return URoundedContainer(
        showBorder: true,
        backgroundColor: dark ? UColors.dark : UColors.light,
        padding: EdgeInsets.all(USizes.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            /// 1 - Row
            Row(
              children: [
                /// Ship Icon
                Icon(Iconsax.ship),
                SizedBox(width: USizes.spaceBtwItems / 2),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      /// Title
                      Text('Đang sử lí', style: Theme.of(context).textTheme.bodyLarge!.apply(color: UColors.primary, fontWeightDelta: 1),),

                      /// Date
                      Text('01 Jan 2025', style: Theme.of(context).textTheme.headlineSmall)
                    ],
                  ),
                ),

                IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_34, size: USizes.iconSm,))
              ],
            ),
            SizedBox(height: USizes.spaceBtwItems),

            /// 2 - Row
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [

                      /// Tag Icon
                      Icon(Iconsax.tag),
                      SizedBox(width: USizes.spaceBtwItems / 2),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            /// Order
                            Text('Đặt hàng', style: Theme.of(context).textTheme.labelMedium),

                            /// Order Value
                            Text('729347', style: Theme.of(context).textTheme.titleMedium)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    children: [
                      Icon(Iconsax.calendar),
                      SizedBox(width: USizes.spaceBtwItems / 2),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            /// Shipping Date
                            Text('Ngày giao hàng', style: Theme.of(context).textTheme.labelMedium),

                            /// Date
                            Text('06 Jan 2025', style: Theme.of(context).textTheme.titleMedium)
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      );
    },);
  }
}
