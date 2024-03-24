import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stationery_station/common/widgets/containers/circular_container.dart';
import 'package:stationery_station/common/widgets/images/rounded_images.dart';
import 'package:stationery_station/features/shop/controllers/home_controller.dart';
import 'package:stationery_station/utils/constants/colors.dart';
import 'package:stationery_station/utils/constants/sizes.dart';

class SsappPromoSlider extends StatelessWidget {
  const SsappPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
            autoPlay: true,
            autoPlayCurve: Curves.linear,
          ),
          items: banners.map((e) => SsappRoundedImage(imageUrl: e)).toList(),
        ),
        const SizedBox(
          height: SsappSizes.spaceBetweenItems,
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banners.length; i++)
                SsappCircularContainer(
                  width: 20,
                  height: 5,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor: controller.carouselCurrentIndex.value == i
                      ? SsappColors.primary
                      : SsappColors.grey,
                ),
            ],
          ),
        )
      ],
    );
  }
}
