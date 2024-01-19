import 'package:flutter/material.dart';

import 'package:hotel_booking/core/app_export.dart';

class Price extends StatelessWidget {
  const Price({
    super.key,
    required this.titleText,
    required this.priceText,
  });

  final String titleText;
  final String priceText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            titleText,
            style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1)),
          ),
        ),
        Text(
          priceText,
          style: CustomTextStyles.bodyLargeSecondaryContainer.copyWith(
              color: theme.colorScheme.secondaryContainer.withOpacity(1)),
        ),
      ],
    );
  }
}
