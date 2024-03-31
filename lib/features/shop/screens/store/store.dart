import 'package:flutter/material.dart';
import 'package:stationery_station/common/widgets/appbar/appbar.dart';
import 'package:stationery_station/common/widgets/containers/rounded_container.dart';
import 'package:stationery_station/common/widgets/containers/search_container.dart';
import 'package:stationery_station/common/widgets/images/circular_image.dart';
import 'package:stationery_station/common/widgets/products/cart/cart_menu.dart';
import 'package:stationery_station/common/widgets/texts/brand_title_text_verified.dart';
import 'package:stationery_station/common/widgets/texts/section_heading.dart';
import 'package:stationery_station/utils/constants/colors.dart';
import 'package:stationery_station/utils/constants/image_strings.dart';
import 'package:stationery_station/utils/constants/sizes.dart';
import 'package:stationery_station/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SsappAppBar(
        title: Text(
          "Store",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [SsappCartCounterIcon(onPressed: () {})],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxScrollable) {
            final dark = SsappHelperFunction.isDarkMode(context);
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                backgroundColor: dark ? SsappColors.black : SsappColors.white,
                expandedHeight: 440,
                automaticallyImplyLeading: false,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(SsappSizes.defaultSpace),
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      // Search bar
                      const SizedBox(height: SsappSizes.spaceBetweenItems),
                      const SsappSearchContainer(
                        text: "Search in Store",
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: SsappSizes.spaceBetweenSections,
                      ),

                      // Feature Brands
                      SsappSectionHeading(
                          onPressed: () {}, title: "Featured Brands"),
                      const SizedBox(
                          height: SsappSizes.spaceBetweenItems / 1.5),
                      const SsappRoundedContainer(
                        padding: EdgeInsets.all(SsappSizes.sm),
                        showBorder: true,
                        backgroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            SsappCircularImage(
                              image: SsappImages.ankerBrand,
                            ),
                            SizedBox(width: SsappSizes.spaceBetweenItems / 2),
                            Column(
                              children: [
                                SsappBrandTitleVerified(title: "Anker"),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Container()),
    );
  }
}
