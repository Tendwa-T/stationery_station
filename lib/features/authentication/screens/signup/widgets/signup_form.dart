import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stationery_station/common/widgets/login_signup/terms_and_conditions.dart';
import 'package:stationery_station/features/authentication/screens/signup/verify_email.dart';
import 'package:stationery_station/utils/constants/sizes.dart';

class SsappSignupForm extends StatelessWidget {
  const SsappSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: "First Name",
                      prefixIcon: Icon(Icons.person_outline)),
                ),
              ),
              const SizedBox(
                width: SsappSizes.spaceBetweenInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: "Last Name",
                    prefixIcon: Icon(Icons.person_outline),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: SsappSizes.spaceBetweenInputFields),
          // Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: "Username",
              prefixIcon: Icon(Icons.person_add_outlined),
            ),
          ),
          const SizedBox(height: SsappSizes.spaceBetweenInputFields),

          // Email
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Email",
              prefixIcon: Icon(Icons.email_outlined),
            ),
          ),
          const SizedBox(height: SsappSizes.spaceBetweenInputFields),

          // Phone Number
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Phone Number",
              prefixIcon: Icon(Icons.phone_outlined),
            ),
          ),
          const SizedBox(height: SsappSizes.spaceBetweenInputFields),

          // Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: "Password",
              prefixIcon: Icon(Icons.password_outlined),
              suffixIcon: Icon(Icons.visibility_off_outlined),
            ),
          ),
          const SizedBox(height: SsappSizes.spaceBetweenInputFields),

          // Terms and conditions
          const TermsAndConditions(),
          const SizedBox(
            height: SsappSizes.spaceBetweenSections,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => const VerifyEmailScreen());
              },
              child: const Text("Create Account"),
            ),
          )
        ],
      ),
    );
  }
}
