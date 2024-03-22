import 'package:flutter/material.dart';
import 'package:stationery_station/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:stationery_station/utils/constants/colors.dart';
import 'package:stationery_station/utils/constants/sizes.dart';
import 'package:stationery_station/utils/device/device_utility.dart';
import 'package:stationery_station/utils/helpers/helper_functions.dart';

class OnBoardingNextbutton extends StatelessWidget {
  const OnBoardingNextbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SsappHelperFunction.isDarkMode(context);
    return Positioned(
      right: SsappSizes.defaultSpace,
      bottom: SsappDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? SsappColors.primary : Colors.black,
        ),
        child: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
