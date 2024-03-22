import 'package:flutter/material.dart';
import 'package:stationery_station/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:stationery_station/utils/constants/sizes.dart';

class OnBoradingSkip extends StatelessWidget {
  const OnBoradingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: SsappSizes.appBarHeight,
      right: SsappSizes.defaultSpace,
      child: TextButton(
        onPressed: () {
          OnBoardingController.instance.skipPage();
        },
        child: const Text("Skip"),
      ),
    );
  }
}
