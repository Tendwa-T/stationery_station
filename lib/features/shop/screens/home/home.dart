import 'package:flutter/material.dart';
import 'package:stationery_station/common/widgets/containers/primary_header_container.dart';
import 'package:stationery_station/common/widgets/containers/search_container.dart';
import 'package:stationery_station/common/widgets/layouts/grid_layout.dart';
import 'package:stationery_station/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:stationery_station/common/widgets/texts/section_heading.dart';
import 'package:stationery_station/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:stationery_station/features/shop/screens/home/widgets/home_categories.dart';
import 'package:stationery_station/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:stationery_station/utils/constants/image_strings.dart';
import 'package:stationery_station/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SsappPrimaryHeaderContainer(
              child: Column(
                children: [
                  // AppBar
                  SsappHomeAppBar(),
                  SizedBox(height: SsappSizes.spaceBetweenSections),

                  // SearchBar
                  SsappSearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(height: SsappSizes.spaceBetweenSections),

                  // Categories
                  SsappHomeCategories(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(SsappSizes.defaultSpace),
              child: Column(
                children: [
                  const SsappPromoSlider(
                    banners: [
                      SsappImages.artBanner,
                      SsappImages.toyBanner,
                      SsappImages.techBanner,
                      SsappImages.bookBanner,
                      SsappImages.stationeryBanner,
                    ],
                  ),
                  const SizedBox(
                    height: SsappSizes.spaceBetweenSections,
                  ),
                  SsappSectionHeading(
                    title: "Popular Products",
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: SsappSizes.spaceBetweenItems,
                  ),
                  SsappGridLayout(
                    itemBuilder: (_, index) => const SsappProductCardVertical(),
                    itemCount: 4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
