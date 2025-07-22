
import 'package:e_commerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/textfields/search_bar.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../controllers/home/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -----[Upper Part]-----
            Stack(
              children: [
                /// Total Height + 10
                SizedBox(height: USizes.homePrimaryHeaderHeight + 10),
        
                /// Primary Header Container
                UPrimaryHeaderContainer(
                  height: USizes.homePrimaryHeaderHeight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// App Bar
                      UHomeAppBar(),
                      SizedBox(height: USizes.spaceBtwSections),
        
                      /// Home Categories
                      UHomeCategories()
                    ],
                  ),
                ),
        
                /// Search Bar
                USearchBar()
              ],
            ),
        
            /// -----[Lower Part]-----
            Padding(
              padding: const EdgeInsets.all(USizes.defaultSpace),
              child: Column(
                children: [

                  /// Banners
                  UPromoSlider(
                    banners: [UImages.homeBanner1, UImages.homeBanner2, UImages.homeBanner3, UImages.homeBanner4, UImages.homeBanner5],
                  ),
                  const SizedBox(height: USizes.spaceBtwSections),

                  /// Section Heading
                  USectionHeading(title: 'Phổ biến', onPressed: (){}),
                  const SizedBox(height: USizes.spaceBtwItems),

                  /// Grid View Of Product Cards
                  UGridLayout(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return UProductCardVertical();
                    },
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}













