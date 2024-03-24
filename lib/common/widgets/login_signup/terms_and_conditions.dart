import 'package:flutter/material.dart';
import 'package:stationery_station/utils/constants/colors.dart';
import 'package:stationery_station/utils/constants/sizes.dart';
import 'package:stationery_station/utils/helpers/helper_functions.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SsappHelperFunction.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Checkbox(
            onChanged: (value) {},
            value: true,
          ),
        ),
        const SizedBox(
          width: SsappSizes.spaceBetweenItems,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: "I agree to ",
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: "Privacy Policy",
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? SsappColors.white : SsappColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? SsappColors.white : SsappColors.primary,
                    ),
              ),
              TextSpan(
                  text: " and ", style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: "Terms of Use",
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? SsappColors.white : SsappColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? SsappColors.white : SsappColors.primary,
                    ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
