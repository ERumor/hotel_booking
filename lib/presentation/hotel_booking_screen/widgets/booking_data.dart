import 'package:flutter/material.dart';
import 'package:hotel_booking/core/app_export.dart';

class BookingData extends StatefulWidget {
  const BookingData({super.key});

  @override
  State<BookingData> createState() => _BookingDataState();
}

class _BookingDataState extends State<BookingData> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: fetchHotel(),
        builder: (BuildContext context, AsyncSnapshot<Hotel> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // While waiting for the API response
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            // If there is an error
            return Text('Error: ${snapshot.error}');
          } else {
            // Once the response is available

            return Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
              decoration: AppDecoration.fillWhiteA
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 77.h),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            "Вылет из",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 76.h),
                          child: Text(
                            "Санкт-Петербург",
                            style: CustomTextStyles.bodyLargeSecondaryContainer,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(right: 89.h),
                    child: Row(
                      children: [
                        Text(
                          "Страна, город",
                          style: theme.textTheme.bodyLarge,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 39.h),
                          child: Text(
                            "Египет, Хургада",
                            style: CustomTextStyles.bodyLargeSecondaryContainer,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Padding(
                    padding: EdgeInsets.only(right: 27.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Text(
                            "Даты",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        Text(
                          "19.09.2023 - 27.09.2023",
                          style: CustomTextStyles.bodyLargeSecondaryContainer,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Row(
                    children: [
                      Text(
                        "Кол-во ночей",
                        style: theme.textTheme.bodyLarge,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 44.h),
                        child: Text(
                          "7 ночей",
                          style: CustomTextStyles.bodyLargeSecondaryContainer,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.only(right: 55.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            "Отель",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        Text(
                          "Steigenberger Makadi",
                          style: CustomTextStyles.bodyLargeSecondaryContainer,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Padding(
                    padding: EdgeInsets.only(right: 26.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 1.v, bottom: 19.v),
                          child: Text(
                            "Номер",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        Container(
                          width: 176.h,
                          margin: EdgeInsets.only(left: 91.h),
                          child: Text(
                            "Стандартный с видом на бассейн или сад",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyLargeSecondaryContainer
                                .copyWith(height: 1.20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Row(
                    children: [
                      Text("Питание", style: theme.textTheme.bodyLarge),
                      Padding(
                        padding: EdgeInsets.only(left: 79.h),
                        child: Text(
                          "Всё включено",
                          style: CustomTextStyles.bodyLargeSecondaryContainer,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }
        });
  }
}
