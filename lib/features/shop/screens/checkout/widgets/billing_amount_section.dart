import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class UBillingAmountSection extends StatelessWidget {
  const UBillingAmountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        /// Subtotal
        Row(
          children: [
            Expanded(child: Text('Tổng cộng', style: Theme.of(context).textTheme.bodyMedium)),
            Text('\19.000.000đ', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        SizedBox(height: USizes.spaceBtwItems / 2),

        /// Shipping Fee
        Row(
          children: [
            Expanded(child: Text('Phí giao hàng', style: Theme.of(context).textTheme.bodyMedium)),
            Text('\20.000đ', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        SizedBox(height: USizes.spaceBtwItems / 2),

        /// Tax Fee
        Row(
          children: [
            Expanded(child: Text('Thuế', style: Theme.of(context).textTheme.bodyMedium)),
            Text('\90.000đ', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        SizedBox(height: USizes.spaceBtwItems / 2),

        /// Order Total
        Row(
          children: [
            Expanded(child: Text('Tổng đơn hàng', style: Theme.of(context).textTheme.bodyMedium)),
            Text('\19.110.000đ', style: Theme.of(context).textTheme.titleMedium),
          ],
        )
      ],
    );
  }
}