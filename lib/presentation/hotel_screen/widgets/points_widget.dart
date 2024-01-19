import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

class Points extends StatefulWidget {
  const Points({
    super.key,
    required this.checkmark,
    required this.titleMediumOnSecondaryContainer,
    required this.titleSmall,
  });

  final String checkmark;
  final String titleMediumOnSecondaryContainer;
  final String titleSmall;

  @override
  State<Points> createState() => _PointsState();
}

class _PointsState extends State<Points> {
  @override
  Widget build(BuildContext context) {
    String imagePath = widget.checkmark;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomImageView(
          imagePath: imagePath,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 7.v),
        ),
        Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.titleMediumOnSecondaryContainer,
                style:
                    CustomTextStyles.titleMediumOnSecondaryContainer.copyWith(
                  color: theme.colorScheme.onSecondaryContainer,
                ),
              ),
              SizedBox(height: 1.v),
              Text(
                widget.titleSmall,
                style: theme.textTheme.titleSmall!.copyWith(
                  color: appTheme.blueGray400,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 7.v),
        ),
      ],
    );
  }
}
