import 'package:flutter/material.dart';

import '../models/chipviewsection_item_model.dart';
import 'package:hotel_booking/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewsectionItemWidget extends StatelessWidget {
  ChipviewsectionItemWidget(
    this.chipviewsectionItemModelObj, {
    super.key,
    this.onSelectedChipView1,
  });

  ChipviewsectionItemModel chipviewsectionItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 4.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        chipviewsectionItemModelObj.widget!,
        style: TextStyle(
          color: (chipviewsectionItemModelObj.isSelected ?? false)
              ? theme.colorScheme.primary
              : theme.colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 16.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: (chipviewsectionItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.gray50,
      selectedColor: theme.colorScheme.primary.withOpacity(0.1),
      shape: (chipviewsectionItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView1?.call(value);
      },
    );
  }
}
