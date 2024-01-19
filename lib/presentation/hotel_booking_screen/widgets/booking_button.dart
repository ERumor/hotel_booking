import 'package:flutter/material.dart';

import 'package:hotel_booking/core/app_export.dart';
import '../../../widgets/custom_elevated_button.dart';

class BookingButton extends StatefulWidget {
  const BookingButton({super.key});

  @override
  State<BookingButton> createState() => _BookingButtonState();
}

class _BookingButtonState extends State<BookingButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 28.v),
      decoration: AppDecoration.outlineGray,
      child: CustomElevatedButton(
        onPressed: () {
          NavigatorService.pushNamed(AppRoutes.orderPaidScreen);
        },
        text: "Оплатить",
      ),
    );
  }
}
