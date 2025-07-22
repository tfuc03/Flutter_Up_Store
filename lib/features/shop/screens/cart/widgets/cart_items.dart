import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/products/cart/product_quantity_with_add_remove.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class UCartItems extends StatelessWidget {
  const UCartItems({
    super.key,
    this.showAddRemoveButtons = true
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) => SizedBox(height: USizes.spaceBtwSections),
      itemCount: 2,
      itemBuilder: (context, index) {
        return Column(
          children: [
            /// Cart Item
            UCartItem(),
            if(showAddRemoveButtons) SizedBox(height: USizes.spaceBtwItems),

            /// Price, Counter Buttons
            if(showAddRemoveButtons) Row(
              children: [

                /// Extra Space
                SizedBox(width: 70.0),

                /// Quantity Buttons
                UProductQuantityWithAddRemove(),
                Spacer(),

                /// Product Price
                UProductPriceText(price: '15.000.000đ')

              ],
            )
          ],
        );
      },
    );
  }
}