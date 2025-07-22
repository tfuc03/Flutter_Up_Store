import 'package:flutter/material.dart';
import '../../../../../common/widgets/custom_shapes/primary_header_container.dart';
import '../../../../../common/widgets/images/user_profile_logo.dart';
import '../../../../../utils/constants/sizes.dart';

class UProfilePrimaryHeader extends StatelessWidget {
  const UProfilePrimaryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Total Height
        SizedBox(height: USizes.profilePrimaryHeaderHeight + 60),

        /// Primary Header
        UPrimaryHeaderContainer(height: USizes.profilePrimaryHeaderHeight, child: Container()),

        /// User Profile
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Center(child: UserProfileLogo()),
        ),
      ],
    );
  }
}

