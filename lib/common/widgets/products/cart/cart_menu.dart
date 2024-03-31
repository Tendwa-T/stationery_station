import 'package:flutter/material.dart';
import 'package:stationery_station/utils/constants/colors.dart';
import 'package:stationery_station/utils/helpers/helper_functions.dart';

class SsappCartCounterIcon extends StatelessWidget {
  const SsappCartCounterIcon({
    super.key,
    required this.onPressed,
    this.iconColor,
  });

  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final bool dark = SsappHelperFunction.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Icons.shopping_bag_outlined,
            color: iconColor ?? (dark ? SsappColors.light : SsappColors.dark),
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color: SsappColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                "5",
                style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: SsappColors.white,
                      fontSizeFactor: 0.8,
                    ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
