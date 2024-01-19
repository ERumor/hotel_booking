import 'package:flutter/material.dart';

import 'package:hotel_booking/core/app_export.dart';
import '../../../widgets/app_bar/appbar_leading_circleimage.dart';
import '../../../widgets/app_bar/appbar_title.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';

class OrderPaidAppbar extends StatelessWidget implements PreferredSizeWidget {
  const OrderPaidAppbar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 11.v),
        onTap: () {
          onTapArrowLeft(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitle(text: "Заказ оплачен"),
      styleType: Style.bgFill,
    );
  }
}

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) {
  NavigatorService.goBack();
}
