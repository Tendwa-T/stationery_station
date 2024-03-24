import 'package:flutter/material.dart';
import 'package:stationery_station/utils/constants/colors.dart';
import 'package:stationery_station/utils/helpers/helper_functions.dart';

class SsappDivider extends StatelessWidget {
  const SsappDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = SsappHelperFunction.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? SsappColors.darkGrey : SsappColors.grey,
            thickness: 1.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? SsappColors.darkGrey : SsappColors.grey,
            thickness: 1.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
