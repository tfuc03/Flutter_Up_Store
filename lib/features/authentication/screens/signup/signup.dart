import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/button/social_buttons.dart';
import 'package:e_commerce/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
              Text(UTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: USizes.spaceBtwSections),

              /// -----[Form]-----
              USignupForm(),
              SizedBox(height: USizes.spaceBtwSections),

              /// -----[Divider]-----
              UFormDivider(title: UTexts.orSignupWith),
              SizedBox(height: USizes.spaceBtwSections),

              /// -----[Footer]-----
              USocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}


