import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/shop/screens/store/widgets/category_tab.dart';
import 'package:e_commerce/features/shop/screens/store/widgets/store_primary_header.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../common/widgets/brands/brand_card.dart';
import '../../../../utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  expandedHeight: 340,
                  pinned: true,
                  floating: false,
                  flexibleSpace: SingleChildScrollView(
                    child: Column(
                      children: [
                        /// Primary Header
                        UStorePrimaryHeader(),
                        SizedBox(height: USizes.spaceBtwItems),

                        /// Brands List
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: USizes.defaultSpace),
                          child: Column(
                            children: [
                              /// Brands Heading
                              USectionHeading(title: 'Thương hiệu', onPressed: () {}),

                              /// Brand Cards
                              SizedBox(
                                height: USizes.brandCardHeight,
                                child: ListView.separated(
                                  separatorBuilder: (context, index) => SizedBox(width: USizes.spaceBtwItems),
                                  shrinkWrap: true,
                                  itemCount: 10,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) =>
                                      SizedBox(width: USizes.brandCardWidth, child: UBrandCard()),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  bottom: UTabBar(tabs: [
                    Tab(child: Text('Thể thao')),
                    Tab(child: Text('Nội thất')),
                    Tab(child: Text('Đồ điện tử')),
                    Tab(child: Text('Quần áo')),
                    Tab(child: Text('Mỹ phẩm')),
                  ]),
                ),
              ];
            },
            body: TabBarView(children: [
              UCategoryTab(),
              UCategoryTab(),
              UCategoryTab(),
              UCategoryTab(),
              UCategoryTab(),
            ])),
      ),
    );
  }
}
