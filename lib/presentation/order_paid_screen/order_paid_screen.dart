import 'package:flutter/material.dart';

import 'package:hotel_booking/presentation/order_paid_screen/widgets/order_paid_appbar.dart';
import 'package:hotel_booking/presentation/order_paid_screen/widgets/order_paid_button.dart';
import 'package:hotel_booking/core/app_export.dart';

class OrderPaidScreen extends ConsumerStatefulWidget {
  const OrderPaidScreen({super.key});

  @override
  OrderPaidScreenState createState() => OrderPaidScreenState();
}

class OrderPaidScreenState extends ConsumerState<OrderPaidScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        appBar: OrderPaidAppbar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(left: 29.h, top: 122.v, right: 29.h),
          child: Column(
            children: [
              Container(
                height: 94.adaptSize,
                width: 94.adaptSize,
                padding: EdgeInsets.all(25.h),
                decoration: AppDecoration.fillGray
                    .copyWith(borderRadius: BorderRadiusStyle.circleBorder47),
                child: CustomImageView(
                  imagePath: ImageConstant.imgPartyPopper,
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 33.v),
              Text(
                "Ваш заказ принят в работу",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 16.v),
              SizedBox(
                width: 315.h,
                child: Text(
                  "Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.",
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge!.copyWith(height: 1.20),
                ),
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
        bottomNavigationBar: OrderPaidButton(),
      ),
    );
  }
}
