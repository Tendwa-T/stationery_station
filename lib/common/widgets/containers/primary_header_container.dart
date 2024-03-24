import 'package:flutter/material.dart';
import 'package:stationery_station/common/widgets/containers/circular_container.dart';
import 'package:stationery_station/common/widgets/curved_edges/curved_edges_widget.dart';
import 'package:stationery_station/utils/constants/colors.dart';

class SsappPrimaryHeaderContainer extends StatelessWidget {
  const SsappPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SsappCurvedWidget(
      child: SizedBox(
        height: 400,
        child: Container(
          color: SsappColors.primary,
          padding: const EdgeInsets.only(bottom: 0),
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: SsappCircularContainer(
                  backgroundColor: SsappColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: SsappCircularContainer(
                  backgroundColor: SsappColors.textWhite.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
