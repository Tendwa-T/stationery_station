import 'package:flutter/material.dart';
import 'package:stationery_station/common/widgets/appbar/appbar.dart';
import 'package:stationery_station/common/widgets/products/cart/cart_menu.dart';
import 'package:stationery_station/utils/constants/colors.dart';
import 'package:stationery_station/utils/constants/text_strings.dart';

class SsappHomeAppBar extends StatelessWidget {
  const SsappHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SsappAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            SsappTexts.homeAppBarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: SsappColors.grey),
          ),
          Text(
            SsappTexts.homeAppBarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: SsappColors.white),
          ),
        ],
      ),
      actions: [
        SsappCartCounterIcon(
          onPressed: () {},
          iconColor: SsappColors.white,
        )
      ],
    );
  }
}
