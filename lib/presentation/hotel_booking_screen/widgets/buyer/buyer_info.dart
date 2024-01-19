import 'package:flutter/material.dart';

import 'package:hotel_booking/core/app_export.dart';

import 'buyer_email.dart';
import 'buyer_phone.dart';

class BuyerInfo extends StatefulWidget {
  const BuyerInfo({super.key});

  @override
  State<BuyerInfo> createState() => _BuyerInfoState();
}

class _BuyerInfoState extends State<BuyerInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
      decoration: AppDecoration.fillWhiteA
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Text(
            "Информация о покупателе ",
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 17.v),
          BuyerPhone(),
          SizedBox(height: 8.v),
          BuyerEmail(),
          SizedBox(height: 7.v),
          Container(
            width: 331.h,
            margin: EdgeInsets.only(right: 11.h),
            child: Text(
              "Эти данные никому не передаются. После оплаты мы вышлем чек на указанный вами номер и почту",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium!.copyWith(height: 1.20),
            ),
          ),
        ],
      ),
    );
  }
}
