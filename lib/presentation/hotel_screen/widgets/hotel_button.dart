import 'package:flutter/material.dart';
import 'package:hotel_booking/core/app_export.dart';

import '../../../widgets/custom_elevated_button.dart';

class HotelButton extends StatefulWidget {
  const HotelButton({super.key});

  @override
  State<HotelButton> createState() => _HotelButtonState();
}

class _HotelButtonState extends State<HotelButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 28.v,
      ),
      decoration: AppDecoration.outlineGray,
      child: CustomElevatedButton(
        text: "К выбору номера",
        onPressed: () {
          NavigatorService.pushNamed(AppRoutes.hotelRoomScreen);
        },
      ),
    );
  }
}
