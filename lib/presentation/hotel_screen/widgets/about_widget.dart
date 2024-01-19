import 'package:flutter/material.dart';
import 'package:hotel_booking/core/app_export.dart';
import 'package:hotel_booking/presentation/hotel_screen/widgets/points_widget.dart';

import '../models/peculiarities_model.dart';
import '../notifier/hotel_notifier.dart';
import 'peculiarities_widget.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
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
          return Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 15.v,
            ),
            decoration: AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Об отеле",
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 15.v),
                Consumer(
                  builder: (context, ref, _) {
                    return Wrap(
                      runSpacing: 8.v,
                      spacing: 8.h,
                      children: List<Widget>.generate(
                        ref
                                .watch(hotelNotifier)
                                .hotelModelObj
                                ?.aboutHotelList
                                .length ??
                            0,
                        (index) {
                          PeculiaritiesModel model = ref
                                  .watch(hotelNotifier)
                                  .hotelModelObj
                                  ?.aboutHotelList[index] ??
                              PeculiaritiesModel();

                          return Peculiarities(
                            model,
                            onSelectedChipView1: (value) {
                              ref
                                  .read(hotelNotifier.notifier)
                                  .onSelectedChipView1(index, value);
                            },
                          );
                        },
                      ),
                    );
                  },
                ),
                SizedBox(height: 11.v),
                SizedBox(
                  width: 340.h,
                  child: Text(
                    api.aboutTheHotel.description,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style:
                        CustomTextStyles.bodyLargeSecondaryContainer_1.copyWith(
                      height: 1.20,
                    ),
                  ),
                ),
                SizedBox(height: 13.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.h,
                    vertical: 14.v,
                  ),
                  decoration: AppDecoration.fillGray50.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Points(
                        checkmark: ImageConstant.imgSettings,
                        titleMediumOnSecondaryContainer: "Удобства",
                        titleSmall: "Самое необходимое",
                      ),
                      SizedBox(height: 9.v),
                      Divider(
                        indent: 38.h,
                      ),
                      SizedBox(height: 8.v),
                      Points(
                        checkmark: ImageConstant.imgCheckmark,
                        titleMediumOnSecondaryContainer: "Что включено",
                        titleSmall: "Самое необходимое",
                      ),
                      SizedBox(height: 9.v),
                      Divider(
                        indent: 38.h,
                      ),
                      SizedBox(height: 8.v),
                      Points(
                        checkmark: ImageConstant.imgClose,
                        titleMediumOnSecondaryContainer: "Что не включено",
                        titleSmall: "Самое необходимое",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
