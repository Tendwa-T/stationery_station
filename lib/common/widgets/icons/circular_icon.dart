import 'package:flutter/material.dart';
import 'package:stationery_station/utils/constants/colors.dart';
import 'package:stationery_station/utils/constants/sizes.dart';
import 'package:stationery_station/utils/helpers/helper_functions.dart';

class SsappCircularIcon extends StatelessWidget {
  const SsappCircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = SsappSizes.lg,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final IconData icon;
  final double? width, height, size;
  final Color? color, backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = SsappHelperFunction.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : dark
                ? SsappColors.black.withOpacity(0.9)
                : SsappColors.light.withOpacity(0.9),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
