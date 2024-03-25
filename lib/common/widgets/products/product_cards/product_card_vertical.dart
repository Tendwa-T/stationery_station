import 'package:flutter/material.dart';
import 'package:stationery_station/common/styles/shadows.dart';
import 'package:stationery_station/common/widgets/containers/rounded_container.dart';
import 'package:stationery_station/common/widgets/icons/circular_icon.dart';
import 'package:stationery_station/common/widgets/images/rounded_images.dart';
import 'package:stationery_station/common/widgets/texts/product_price_text.dart';
import 'package:stationery_station/common/widgets/texts/product_title_text.dart';
import 'package:stationery_station/utils/constants/colors.dart';
import 'package:stationery_station/utils/constants/image_strings.dart';
import 'package:stationery_station/utils/constants/sizes.dart';
import 'package:stationery_station/utils/helpers/helper_functions.dart';

class SsappProductCardVertical extends StatelessWidget {
  const SsappProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SsappHelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          boxShadow: [SsappShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(SsappSizes.productImageRadius),
          color: dark ? SsappColors.darkGrey : SsappColors.white,
        ),
        child: Column(
          children: [
            // Thumbnail
            SsappRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(0),
              backgroundColor: dark ? SsappColors.dark : SsappColors.light,
              child: Stack(
                children: [
                  // Thumbnail Image
                  const SsappRoundedImage(
                    width: double.maxFinite,
                    imageUrl: SsappImages.productImage1,
                    applyImageRadius: true,
                  ),
                  // Sale Tag
                  Positioned(
                    top: 12,
                    child: SsappRoundedContainer(
                      radius: SsappSizes.sm,
                      backgroundColor: SsappColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: SsappSizes.sm,
                        vertical: SsappSizes.xs,
                      ),
                      child: Text(
                        "25%",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: SsappColors.black),
                      ),
                    ),
                  ),
                  // Favourite Icon
                  const Positioned(
                    right: 0,
                    top: 0,
                    child: SsappCircularIcon(
                      icon: Icons.favorite,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: SsappSizes.spaceBetweenItems / 2,
            ),
            // Details
            Padding(
              padding: const EdgeInsets.only(left: SsappSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SsappProductTitleText(
                    title: "Brush Set",
                    smallSize: true,
                  ),
                  const SizedBox(
                    height: SsappSizes.spaceBetweenItems / 2,
                  ),
                  Row(
                    children: [
                      Text(
                        "Faber Castel",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(
                        width: SsappSizes.xs,
                      ),
                      const Icon(
                        Icons.verified,
                        color: SsappColors.primary,
                        size: SsappSizes.iconXs,
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: SsappSizes.sm),
                  child: SsappProductPriceText(
                    price: "200.0",
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: SsappColors.dark,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(SsappSizes.cardRadiusMd),
                        bottomRight:
                            Radius.circular(SsappSizes.productImageRadius)),
                  ),
                  child: const SizedBox(
                    width: SsappSizes.iconLg * 1.2,
                    height: SsappSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: SsappColors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
