import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stationery_station/utils/constants/image_strings.dart';
import 'package:stationery_station/utils/constants/sizes.dart';
import 'package:stationery_station/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SsappSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: const AssetImage(
                  SsappImages.deliveredEmailIllustration,
                ),
                width: SsappHelperFunction.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: SsappSizes.spaceBetweenSections,
              ),
              // Title and subTitle
              Text(
                "Password Reset Email Sent",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: SsappSizes.spaceBetweenItems,
              ),
              Text(
                "Your Account Security is Our Priority. We've sent You a Secure Link to Safely Change Your Password and Keep Your Account Protected",
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
                  onPressed: () {},
                  child: const Text("Done"),
                ),
              ),
              const SizedBox(
                height: SsappSizes.spaceBetweenItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Resend Email"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
