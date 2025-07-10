import 'package:flutter/material.dart';
import 'package:my_app3/utils/colours.dart';
import 'package:my_app3/utils/dimensions.dart';
import 'package:my_app3/widget/app_large_text.dart';
import 'package:my_app3/widget/app_text.dart';
import 'package:my_app3/widget/icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;

  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppLargeText(text: text, size:Dimensions.font26),
        SizedBox(height: Dimensions.height10),

        // Star rating and comment count
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) => Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: 13,
                ),
              ),
            ),
            const SizedBox(width: 8),
            AppText(text: "4.5"),
            const SizedBox(width: 7),
            AppText(text: "1287"),
            const SizedBox(width: 6),
            AppText(text: "comments"),
          ],
        ),
        SizedBox(height: Dimensions.height10),

        // Info row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
              icon: Icons.circle_sharp,
              text: "Normal",
              iconColor: AppColors.iconColor1,
            ),
            IconAndTextWidget(
              icon: Icons.location_on,
              text: "1.7km",
              iconColor: AppColors.mainColor,
            ),
            IconAndTextWidget(
              icon: Icons.access_time_filled_rounded,
              text: "32min",
              iconColor: AppColors.iconColor2,
            ),
          ],
        ),
      ],
    );
  }
}
