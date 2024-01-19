import 'package:flutter/material.dart';
import 'package:hotel_booking/core/app_export.dart';
import 'package:intl/intl.dart';

class BasicData extends StatefulWidget {
  const BasicData({super.key});

  @override
  State<BasicData> createState() => _BasicDataState();
}

class _BasicDataState extends State<BasicData> {
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
            final api = snapshot.data!;
            NumberFormat formatter = NumberFormat('#,###');

            return Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 3.v,
                    ),
                    decoration: AppDecoration.fillAmberA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgStar22,
                          height: 15.adaptSize,
                          width: 15.adaptSize,
                          radius: BorderRadius.circular(
                            1.h,
                          ),
                          margin: EdgeInsets.symmetric(vertical: 3.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 2.h,
                            top: 2.v,
                          ),
                          child: Text(
                            api.rating.toString(),
                            style: CustomTextStyles.titleMediumAmberA700,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            top: 2.v,
                          ),
                          child: Text(
                            api.ratingName,
                            style: CustomTextStyles.titleMediumAmberA700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Text(
                    'Steigenberger Makadi. ' + api.name,
                    style: theme.textTheme.titleLarge,
                  ),
                  SizedBox(height: 6.v),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(appTheme.whiteA700),
                    ),
                    onPressed: () {},
                    child: Text(
                      api.address,
                      style: CustomTextStyles.titleSmallPrimary,
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Row(
                    children: [
                      Text(
                        '${formatter.format(api.minimalPrice.toInt())}'
                                .replaceAll(',', ' ') +
                            ' ₽',
                        style: theme.textTheme.headlineLarge,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          top: 14.v,
                        ),
                        child: Text(
                          "за тур с перелётом",
                          style: theme.textTheme.bodyLarge,
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
