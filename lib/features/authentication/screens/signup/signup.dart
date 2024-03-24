import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stationery_station/common/widgets/login_signup/form_divider.dart';
import 'package:stationery_station/common/widgets/login_signup/social_buttons.dart';
import 'package:stationery_station/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:stationery_station/utils/constants/sizes.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SsappSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                "Let's Create your Account",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: SsappSizes.spaceBetweenSections),
              // Form
              const SsappSignupForm(),
              const SizedBox(
                height: SsappSizes.spaceBetweenSections,
              ),
              SsappDivider(dividerText: "or Sign in with".capitalize!),
              const SizedBox(
                height: SsappSizes.spaceBetweenSections,
              ),
              const SsappSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
