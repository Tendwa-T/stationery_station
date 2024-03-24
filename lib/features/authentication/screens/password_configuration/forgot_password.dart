import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stationery_station/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:stationery_station/utils/constants/sizes.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(SsappSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Headings

            Text(
              "Forgot Password",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: SsappSizes.spaceBetweenItems,
            ),
            Text(
              "Worry not. Our team is ready to help you gain access into your account. Provide us with your Email Address and we will send you a Reset Password Link",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: SsappSizes.spaceBetweenSections * 2,
            ),

            // Textfield
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(
              height: SsappSizes.spaceBetweenSections,
            ),
            // Submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.off(() => const ResetPassword());
                },
                child: const Text("Submit"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
