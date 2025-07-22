
import 'package:e_commerce/common/widgets/custom_shapes/rounded_container.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';

class UProductAttributes extends StatelessWidget {
  const UProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// Selected Attributes Pricing & Description
        URoundedContainer(
            padding: EdgeInsets.all(USizes.md),
            backgroundColor: dark ? UColors.darkerGrey : UColors.grey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Title, Price & Stock
                Row(
                  children: [
                    /// [Text] - Variation Heading
                    USectionHeading(
                      title: 'Variation',
                      showActionButton: false,
                    ),
                    SizedBox(width: USizes.spaceBtwItems),

                    Column(
                      children: [
                        /// Price, Sale Price, Actual Price
                        Row(
                          children: [
                            /// [Text] - Price
                            UProductTitleText(title: 'Giá : ', smallSize: true),

                            /// Actual Price
                            Text(
                              '250',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .apply(decoration: TextDecoration.lineThrough),
                            ),
                            SizedBox(width: USizes.spaceBtwItems),

                            /// Sale price
                            UProductPriceText(price: '200')
                          ],
                        ),

                        /// Stock Status
                        Row(
                          children: [
                            UProductTitleText(title: 'Kho : ', smallSize: true),
                            Text('Còn hàng', style: Theme.of(context).textTheme.titleMedium)
                          ],
                        )
                      ],
                    )
                  ],
                ),

                /// Attribute Description
                UProductTitleText(title: 'Đây là sản phẩm iPhone 11 có dung lượng 512 GB', smallSize: true, maxLines: 4)
              ],
            )),
        SizedBox(height: USizes.spaceBtwItems),

        /// Attributes - Colors
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            USectionHeading(title: 'Màu sắc', showActionButton: false),
            SizedBox(height: USizes.spaceBtwItems / 2),
            Wrap(
              spacing: USizes.sm,
              children: [
                UChoiceChip(text: 'Red', selected: true, onSelected: (value) {}),
                UChoiceChip(text: 'Blue', selected: false, onSelected: (value) {}),
                UChoiceChip(text: 'Yellow', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),

        /// Attributes - Sizes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            USectionHeading(title: 'Kích thước', showActionButton: false),
            SizedBox(height: USizes.spaceBtwItems / 2),
            Wrap(
              spacing: USizes.sm,
              children: [
                UChoiceChip(text: 'Nhỏ', selected: true, onSelected: (value) {}),
                UChoiceChip(text: 'Vừa', selected: false, onSelected: (value) {}),
                UChoiceChip(text: 'Lớn', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        )
      ],
    );
  }
}

