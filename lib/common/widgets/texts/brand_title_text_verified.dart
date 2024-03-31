import 'package:flutter/material.dart';
import 'package:stationery_station/common/widgets/texts/brand_title_text.dart';
import 'package:stationery_station/utils/constants/enums.dart';
import 'package:stationery_station/utils/constants/sizes.dart';

class SsappBrandTitleVerified extends StatelessWidget {
  const SsappBrandTitleVerified({
    super.key,
    required this.title,
    this.maxlines = 1,
    this.textColor,
    this.iconColor,
    this.textAlign,
    this.brandTextSize = TextSizes.small,
  });
  final String title;
  final int maxlines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: SsappBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxlines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(
          width: SsappSizes.xs,
        ),
        Icon(
          Icons.verified,
          color: iconColor,
          size: SsappSizes.iconXs,
        )
      ],
    );
  }
}
