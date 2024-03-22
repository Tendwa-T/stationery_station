import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stationery_station/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:stationery_station/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:stationery_station/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:stationery_station/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:stationery_station/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:stationery_station/utils/constants/image_strings.dart';
import 'package:stationery_station/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: SsappImages.onBoardingImage1,
                title: SsappTexts.onBoradingTitle1,
                subTitle: SsappTexts.onBoradingSubTitle1,
              ),
              OnBoardingPage(
                image: SsappImages.onBoardingImage2,
                title: SsappTexts.onBoradingTitle2,
                subTitle: SsappTexts.onBoradingSubTitle2,
              ),
              OnBoardingPage(
                image: SsappImages.onBoardingImage3,
                title: SsappTexts.onBoradingTitle3,
                subTitle: SsappTexts.onBoradingSubTitle3,
              ),
            ],
          ),
          const OnBoradingSkip(),
          const OnBoardingNavigation(),
          const OnBoardingNextbutton()
        ],
      ),
    );
  }
}
