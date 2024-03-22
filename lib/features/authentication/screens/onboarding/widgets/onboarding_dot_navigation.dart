import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stationery_station/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:stationery_station/utils/constants/colors.dart';
import 'package:stationery_station/utils/constants/sizes.dart';
import 'package:stationery_station/utils/device/device_utility.dart';
import 'package:stationery_station/utils/helpers/helper_functions.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = SsappHelperFunction.isDarkMode(context);
    return Positioned(
      bottom: SsappDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: SsappSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? SsappColors.light : SsappColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
