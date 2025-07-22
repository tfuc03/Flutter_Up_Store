import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/personalization/screens/edit_profile/widgets/user_profile_with_edit_icon.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(showBackArrow: true, title: Text('Chỉnh sửa hồ sơ', style: Theme.of(context).textTheme.headlineMedium)),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [

              /// User Profile with edit Icon
              UserProfileWithEditIcon(),
              SizedBox(height: USizes.spaceBtwSections),
              
              /// Divider
              Divider(),
              SizedBox(height: USizes.spaceBtwItems),

              /// Account Settings Heading
              USectionHeading(title: 'Cài đặt tài khoản', showActionButton: false),
              SizedBox(height: USizes.spaceBtwItems),

              /// Account Details
              UserDetailRow(title: 'Tên', value: 'Không xác định', onTap: (){}),
              UserDetailRow(title: 'Tên đăng nhập', value: 'unknownpro12', onTap: (){}),
              SizedBox(height: USizes.spaceBtwItems),

              /// Divider
              Divider(),
              SizedBox(height: USizes.spaceBtwItems),

              /// Profile Section Heading
              USectionHeading(title: 'Cài đặt hồ sơ', showActionButton: false),
              SizedBox(height: USizes.spaceBtwItems),

              /// Profile Settings
              UserDetailRow(title: 'ID', value: '312312', onTap: (){}),
              UserDetailRow(title: 'Email', value: 'unknownpro@gmail.com', onTap: (){}),
              UserDetailRow(title: 'SĐT', value: '+84365444512', onTap: (){}),
              UserDetailRow(title: 'Giới tính', value: 'Nam', onTap: (){}),
              SizedBox(height: USizes.spaceBtwItems),

              /// Divider
              Divider(),
              SizedBox(height: USizes.spaceBtwItems),

              TextButton(onPressed: (){}, child: Text('Xóa tài khoản', style: TextStyle(color: Colors.red),))


            ],
          ),
        ),
      ),
    );
  }
}

class UserDetailRow extends StatelessWidget {
  const UserDetailRow({
    super.key,
    required this.title,
    required this.value,
    this.icon = Iconsax.arrow_right_34,
    required this.onTap,
  });

  final String title, value;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: USizes.spaceBtwItems / 1.5),
        child: Row(
          children: [
            Expanded(
              flex: 3,
                child: Text(title, style: Theme.of(context).textTheme.bodySmall, overflow: TextOverflow.ellipsis)),
            Expanded(
                flex: 5, child: Text(value, style: Theme.of(context).textTheme.bodyMedium, overflow: TextOverflow.ellipsis)),
            Expanded(child: Icon(icon, size: USizes.iconSm))
          ],
        ),
      ),
    );
  }
}


