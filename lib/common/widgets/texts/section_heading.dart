import 'package:flutter/material.dart';

class SsappSectionHeading extends StatelessWidget {
  const SsappSectionHeading({
    super.key,
    required this.onPressed,
    this.textColor,
    this.buttonTitle = 'View all',
    this.showActionButton = true,
    required this.title,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle)),
      ],
    );
  }
}
