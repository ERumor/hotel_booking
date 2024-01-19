import 'package:flutter/material.dart';

import 'package:hotel_booking/core/app_export.dart';

class SecondTourist extends StatefulWidget {
  const SecondTourist({super.key});

  @override
  State<SecondTourist> createState() => _SecondTouristState();
}

class _SecondTouristState extends State<SecondTourist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
      decoration: AppDecoration.fillWhiteA
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Text(
              "Второй турист",
              style: theme.textTheme.titleLarge,
            ),
          ),
          Container(
            height: 32.adaptSize,
            width: 32.adaptSize,
            padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.v),
            decoration: AppDecoration.fillPrimary1
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowRightPrimary6x12,
              height: 6.v,
              width: 12.h,
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }
}
