import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stationery_station/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:stationery_station/features/authentication/screens/signup/signup.dart';
import 'package:stationery_station/navigation_menu.dart';
import 'package:stationery_station/utils/constants/sizes.dart';

class SsappLoginForm extends StatelessWidget {
  const SsappLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: SsappSizes.spaceBetweenSections,
        ),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                labelText: "E-mail",
              ),
            ),
            const SizedBox(
              height: SsappSizes.spaceBetweenInputFields,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.password_outlined),
                labelText: "Password",
                suffixIcon: Icon(Icons.visibility_off_outlined),
              ),
            ),
            const SizedBox(
              height: SsappSizes.spaceBetweenInputFields / 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text("Remember Me"),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => const ForgotPassword());
                  },
                  child: const Text("Forgot Password?"),
                ),
              ],
            ),
            const SizedBox(
              height: SsappSizes.spaceBetweenSections,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const NavigationMenu());
                },
                child: const Text("Sign In"),
              ),
            ),
            const SizedBox(
              height: SsappSizes.spaceBetweenItems,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(() => const SignupScreen());
                },
                child: const Text("Create Account"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
