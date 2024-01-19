import 'package:flutter/material.dart';

import 'package:hotel_booking/core/app_export.dart';
import '../../../../widgets/custom_icon_button.dart';
import 'birthdate_tourist.dart';
import 'first_name_tourist.dart';
import 'last_name_tourist.dart';
import 'nationality_tourist.dart';
import 'passport_expiry_tourist.dart';
import 'passport_number_tourist.dart';

class FirstTourist extends StatefulWidget {
  const FirstTourist({super.key});

  @override
  State<FirstTourist> createState() => _FirstTouristState();
}

class _FirstTouristState extends State<FirstTourist> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
      decoration: AppDecoration.fillWhiteA
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 4.v),
                child: Text(
                  "Первый турист",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              CustomIconButton(
                height: 32.adaptSize,
                width: 32.adaptSize,
                padding: EdgeInsets.all(10.h),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: CustomImageView(
                    imagePath: isExpanded
                        ? ImageConstant.imgArrowRightPrimary6x12
                        : ImageConstant.imgArrowRightPrimary32x32,
                    width: isExpanded ? 6.adaptSize : 32.adaptSize,
                    height: isExpanded ? 12.adaptSize : 32.adaptSize,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 17.v),
          if (isExpanded) ...[
            FirstName(),
            SizedBox(height: 8.v),
            LastName(),
            SizedBox(height: 8.v),
            BirthDate(),
            SizedBox(height: 8.v),
            Nationality(),
            SizedBox(height: 8.v),
            PassportNumber(),
            SizedBox(height: 8.v),
            PassportExpiry(),
            SizedBox(height: 3.v)
          ],
        ],
      ),
    );
  }
}
