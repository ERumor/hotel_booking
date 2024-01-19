import 'package:flutter/material.dart';

import 'package:hotel_booking/core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';

class AddTourist extends StatefulWidget {
  const AddTourist({super.key});

  @override
  State<AddTourist> createState() => _AddTouristState();
}

class _AddTouristState extends State<AddTourist> {
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
              "Добавить туриста",
              style: theme.textTheme.titleLarge,
            ),
          ),
          CustomIconButton(
            height: 32.adaptSize,
            width: 32.adaptSize,
            padding: EdgeInsets.all(4.h),
            decoration: IconButtonStyleHelper.fillPrimaryTL6,
            child: CustomImageView(imagePath: ImageConstant.imgFrame609),
          ),
        ],
      ),
    );
  }
}
