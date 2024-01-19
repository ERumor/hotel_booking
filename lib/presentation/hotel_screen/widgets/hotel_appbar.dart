import 'package:flutter/material.dart';
import 'package:hotel_booking/core/app_export.dart';

import '../../../widgets/app_bar/appbar_title.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';

class HotelAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HotelAppbar({super.key});
  @override
  Size get preferredSize => Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      height: 56.v,
      centerTitle: true,
      title: AppbarTitle(
        text: "Отель",
      ),
    );
  }
}
