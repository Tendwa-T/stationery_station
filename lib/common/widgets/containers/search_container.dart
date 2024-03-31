import 'package:flutter/material.dart';
import 'package:stationery_station/utils/constants/colors.dart';
import 'package:stationery_station/utils/constants/sizes.dart';
import 'package:stationery_station/utils/device/device_utility.dart';
import 'package:stationery_station/utils/helpers/helper_functions.dart';

class SsappSearchContainer extends StatelessWidget {
  const SsappSearchContainer({
    super.key,
    required this.text,
    this.showBackground = true,
    this.showBorder = true,
    this.icon = Icons.search,
    this.onTap,
    this.padding =
        const EdgeInsets.symmetric(horizontal: SsappSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = SsappHelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: SsappDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(SsappSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? SsappColors.dark
                    : SsappColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(SsappSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: SsappColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: SsappColors.darkerGrey,
              ),
              const SizedBox(
                width: SsappSizes.spaceBetweenItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
