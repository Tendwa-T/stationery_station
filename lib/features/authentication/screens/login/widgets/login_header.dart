import 'package:flutter/material.dart';
import 'package:stationery_station/utils/constants/image_strings.dart';
import 'package:stationery_station/utils/constants/sizes.dart';
import 'package:stationery_station/utils/constants/text_strings.dart';

class SsappLoginHeader extends StatelessWidget {
  const SsappLoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 250,
          child: Image(
            image: AssetImage(
              dark ? SsappImages.darkAppBrand : SsappImages.lightAppBrand,
            ),
          ),
        ),
        Text(
          SsappTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: SsappSizes.sm,
        ),
        Text(
          SsappTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
