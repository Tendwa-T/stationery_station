import 'package:flutter/material.dart';
import 'package:stationery_station/utils/constants/enums.dart';

class SsappBrandTitleText extends StatelessWidget {
  const SsappBrandTitleText({
    super.key,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
    this.color,
    required this.title,
    this.maxLines = 1,
  });

  final Color? color;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      style: brandTextSize == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandTextSize == TextSizes.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
              : brandTextSize == TextSizes.large
                  ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                  : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
      textAlign: textAlign,
    );
  }
}
