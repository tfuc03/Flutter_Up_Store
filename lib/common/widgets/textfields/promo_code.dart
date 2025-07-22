import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../custom_shapes/rounded_container.dart';

class UPromoCodeField extends StatelessWidget {
  const UPromoCodeField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return URoundedContainer(
      showBorder: true,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.only(left: USizes.md, top: USizes.sm, right: USizes.sm, bottom: USizes.sm),
      child: Row(
        children: [
          Flexible(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Have a promo code? Enter here',
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
              )),

          SizedBox(
              width: 80.0, child: ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.withValues(alpha: 0.2),
                foregroundColor:  dark ? UColors.white.withValues(alpha: 0.5) : UColors.dark.withValues(alpha: 0.5),
                side: BorderSide(color: Colors.grey.withValues(alpha: 0.1))
            ),
            child: Text('Apply'),
          ))
        ],
      ),
    );
  }
}