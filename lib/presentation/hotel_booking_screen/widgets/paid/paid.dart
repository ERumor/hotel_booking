import 'package:flutter/material.dart';

import 'package:hotel_booking/core/app_export.dart';
import 'package:hotel_booking/presentation/hotel_booking_screen/widgets/paid/price.dart';

class Paid extends StatefulWidget {
  const Paid({super.key});

  @override
  State<Paid> createState() => _PaidState();
}

class _PaidState extends State<Paid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
      decoration: AppDecoration.fillWhiteA
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Price(
            titleText: "Тур",
            priceText: "186 600",
          ),
          SizedBox(height: 13.v),
          Price(
            titleText: "Топливный сбор",
            priceText: "9 300",
          ),
          SizedBox(height: 13.v),
          Price(
            titleText: "Сервисный сбор",
            priceText: "2 136",
          ),
          SizedBox(height: 13.v),
          Price(
            titleText: "К оплате",
            priceText: "198 036",
          ),
        ],
      ),
    );
  }
}
