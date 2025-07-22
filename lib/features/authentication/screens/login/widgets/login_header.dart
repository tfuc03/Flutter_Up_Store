import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class ULoginHeader extends StatelessWidget {
  const ULoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Title
        Text(UTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
        SizedBox(height: USizes.sm),

        /// SubTitle
        Text(UTexts.loginSubTitle, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}