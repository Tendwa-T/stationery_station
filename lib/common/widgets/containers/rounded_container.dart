import 'package:flutter/material.dart';
import 'package:stationery_station/utils/constants/colors.dart';
import 'package:stationery_station/utils/constants/sizes.dart';

class SsappRoundedContainer extends StatelessWidget {
  const SsappRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius = SsappSizes.cardRadiusLg,
    this.child,
    this.showBorder = false,
    this.borderColor = SsappColors.borderPrimary,
    this.backgroundColor = SsappColors.white,
    this.padding,
    this.margin,
  });

  final double? width, height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor, backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
