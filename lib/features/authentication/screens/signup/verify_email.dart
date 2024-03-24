import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stationery_station/common/widgets/success_screen/success_screen.dart';
import 'package:stationery_station/features/authentication/screens/login/login.dart';
import 'package:stationery_station/utils/constants/image_strings.dart';
import 'package:stationery_station/utils/constants/sizes.dart';
import 'package:stationery_station/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.clear),
            onPressed: () {
              Get.offAll(() => const LoginScreen());
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SsappSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(
                image: const AssetImage(SsappImages.deliveredEmailIllustration),
                width: SsappHelperFunction.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: SsappSizes.spaceBetweenSections,
              ),
              // Title and subTitle
              Text(
                "Verify your Email Address!",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: SsappSizes.spaceBetweenItems,
              ),
              Text(
                "support@tendwatech.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: SsappSizes.spaceBetweenItems,
              ),
              Text(
                "Congratulations! Your Account Awaits: Verify your Email to Start Shopping and Experince a World of Unraivaled Deals and Personal Offers",
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: SsappSizes.spaceBetweenSections,
              ),
              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text("Continue"),
                  onPressed: () {
                    Get.to(() => SuccessScreen(
                          image: SsappImages.staticSuccessIllustration,
                          title: "Your Account Successfully Created",
                          subTitle:
                              "Welcome to Your Ultimate Shopping Destination. Your Account has been Created. Unleash the Joy of Seamless Online Shopping",
                          onPressed: () => Get.to(() => const LoginScreen()),
                        ));
                  },
                ),
              ),
              const SizedBox(
                height: SsappSizes.spaceBetweenItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  child: const Text("Resend E-mail"),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
