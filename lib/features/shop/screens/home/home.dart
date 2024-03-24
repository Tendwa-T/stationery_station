import 'package:flutter/material.dart';
import 'package:stationery_station/common/widgets/containers/primary_header_container.dart';
import 'package:stationery_station/common/widgets/containers/search_container.dart';
import 'package:stationery_station/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:stationery_station/features/shop/screens/home/widgets/home_categories.dart';
import 'package:stationery_station/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:stationery_station/utils/constants/image_strings.dart';
import 'package:stationery_station/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SsappPrimaryHeaderContainer(
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
              padding: EdgeInsets.all(SsappSizes.defaultSpace),
              child: SsappPromoSlider(
                banners: [
                  SsappImages.artBanner,
                  SsappImages.toyBanner,
                  SsappImages.techBanner,
                  SsappImages.bookBanner,
                  SsappImages.stationeryBanner,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
