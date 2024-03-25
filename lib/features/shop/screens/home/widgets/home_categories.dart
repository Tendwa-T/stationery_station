import 'package:flutter/material.dart';
import 'package:stationery_station/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:stationery_station/common/widgets/texts/section_heading.dart';
import 'package:stationery_station/utils/constants/colors.dart';
import 'package:stationery_station/utils/constants/image_strings.dart';
import 'package:stationery_station/utils/constants/sizes.dart';

class SsappHomeCategories extends StatelessWidget {
  const SsappHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: SsappSizes.defaultSpace),
      child: Column(
        children: [
          SsappSectionHeading(
            title: 'Popular Categories',
            textColor: SsappColors.textWhite,
            showActionButton: false,
            onPressed: () {},
          ),
          const SizedBox(height: SsappSizes.spaceBetweenItems),
          SizedBox(
            height: 80,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return SsappVerticalImageText(
                  title: "Books",
                  image: SsappImages.funBooksIcon,
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
