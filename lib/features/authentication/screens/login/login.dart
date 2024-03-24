import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stationery_station/common/styles/spacing_styles.dart';
import 'package:stationery_station/common/widgets/login_signup/form_divider.dart';
import 'package:stationery_station/common/widgets/login_signup/social_buttons.dart';
import 'package:stationery_station/features/authentication/screens/login/widgets/login_form.dart';
import 'package:stationery_station/features/authentication/screens/login/widgets/login_header.dart';
import 'package:stationery_station/utils/constants/sizes.dart';
import 'package:stationery_station/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SsappHelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SsappSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SsappLoginHeader(dark: dark),
              const SsappLoginForm(),
              SsappDivider(
                dividerText: "or sign in with".capitalize!,
              ),
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
