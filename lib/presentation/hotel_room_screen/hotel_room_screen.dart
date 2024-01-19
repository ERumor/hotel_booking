import '../hotel_room_screen/widgets/chipviewsection2_item_widget.dart';
import '../hotel_room_screen/widgets/chipviewsection_item_widget.dart';
import '../hotel_room_screen/widgets/one_item_widget.dart';
import 'models/chipviewsection2_item_model.dart';
import 'models/chipviewsection_item_model.dart';
import 'models/one_item_model.dart';
import 'notifier/hotel_room_notifier.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/core/app_export.dart';
import 'package:hotel_booking/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:hotel_booking/widgets/app_bar/appbar_title.dart';
import 'package:hotel_booking/widgets/app_bar/custom_app_bar.dart';
import 'package:hotel_booking/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HotelRoomScreen extends ConsumerStatefulWidget {
  const HotelRoomScreen({super.key});

  @override
  HotelRoomScreenState createState() => HotelRoomScreenState();
}

class HotelRoomScreenState extends ConsumerState<HotelRoomScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _appBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 8.v),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16.h),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSliderSection(context),
                      SizedBox(height: 7.v),
                      Container(
                        width: 337.h,
                        margin: EdgeInsets.only(right: 5.h),
                        child: Text(
                          "Стандартный с видом на бассейн или сад",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleLarge!
                              .copyWith(height: 1.20),
                        ),
                      ),
                      SizedBox(height: 4.v),
                      _buildChipViewSection(context),
                      SizedBox(height: 16.v),
                      Padding(
                        padding: EdgeInsets.only(right: 29.h),
                        child: _buildRowSection(
                          context,
                          priceText: "186 600",
                          title: "за 7 ночей с перелётом",
                        ),
                      ),
                      SizedBox(height: 15.v),
                      CustomElevatedButton(
                        onPressed: () {
                          NavigatorService.pushNamed(
                              AppRoutes.hotelBookingScreen);
                        },
                        text: "Выбрать номер",
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.v),
                Container(
                  padding: EdgeInsets.all(16.h),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildStackSection(context),
                      SizedBox(height: 8.v),
                      SizedBox(
                        width: 343.h,
                        child: Text(
                          "Стандартный с двумя раздельными кроватями",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleLarge!
                              .copyWith(height: 1.20),
                        ),
                      ),
                      SizedBox(height: 8.v),
                      _buildChipViewSection1(context),
                      SizedBox(height: 16.v),
                      Padding(
                        padding: EdgeInsets.only(right: 29.h),
                        child: _buildRowSection(
                          context,
                          priceText: "194 200",
                          title: "за 7 ночей с перелётом",
                        ),
                      ),
                      SizedBox(height: 16.v),
                      CustomElevatedButton(
                        onPressed: () {
                          NavigatorService.pushNamed(
                              AppRoutes.hotelBookingScreen);
                        },
                        text: "Выбрать номер",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// APPBAR
  PreferredSizeWidget _appBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingCircleimage(
          imagePath: ImageConstant.imgArrowLeft,
          margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 11.v),
          onTap: () {
            onTapArrowLeft(context);
          }),
      centerTitle: true,
      title: AppbarTitle(text: "Steigenberger Makadi"),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildSliderSection(BuildContext context) {
    return SizedBox(
      height: 257.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Consumer(builder: (context, ref, _) {
            return CarouselSlider.builder(
                options: CarouselOptions(
                    height: 257.v,
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      ref.watch(hotelRoomNotifier).sliderIndex = index;
                    }),
                itemCount: ref
                        .watch(hotelRoomNotifier)
                        .k1ModelObj
                        ?.oneItemList
                        .length ??
                    0,
                itemBuilder: (context, index, realIndex) {
                  OneItemModel model = ref
                          .watch(hotelRoomNotifier)
                          .k1ModelObj
                          ?.oneItemList[index] ??
                      OneItemModel();
                  return OneItemWidget(model);
                });
          }),
          Align(
            alignment: Alignment.bottomCenter,
            child: Consumer(builder: (context, ref, _) {
              return Container(
                height: 17.v,
                margin: EdgeInsets.only(bottom: 8.v),
                child: AnimatedSmoothIndicator(
                  activeIndex: ref.watch(hotelRoomNotifier).sliderIndex,
                  count: ref
                          .watch(hotelRoomNotifier)
                          .k1ModelObj
                          ?.oneItemList
                          .length ??
                      0,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                    spacing: 5,
                    activeDotColor:
                        theme.colorScheme.secondaryContainer.withOpacity(1),
                    dotColor:
                        theme.colorScheme.secondaryContainer.withOpacity(0.22),
                    dotHeight: 7.v,
                    dotWidth: 7.h,
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildChipViewSection(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return Wrap(
        runSpacing: 8.v,
        spacing: 8.h,
        children: List<Widget>.generate(
            ref
                    .watch(hotelRoomNotifier)
                    .k1ModelObj
                    ?.chipviewsectionItemList
                    .length ??
                0, (index) {
          ChipviewsectionItemModel model = ref
                  .watch(hotelRoomNotifier)
                  .k1ModelObj
                  ?.chipviewsectionItemList[index] ??
              ChipviewsectionItemModel();
          return ChipviewsectionItemWidget(model, onSelectedChipView1: (value) {
            ref
                .read(hotelRoomNotifier.notifier)
                .onSelectedChipView1(index, value);
          });
        }),
      );
    });
  }

  /// Section Widget
  Widget _buildStackSection(BuildContext context) {
    return SizedBox(
      height: 257.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage201,
              height: 257.v,
              width: 343.h,
              radius: BorderRadius.circular(15.h),
              alignment: Alignment.center),
          CustomImageView(
              imagePath: ImageConstant.imgIconsPinsPinsSegment,
              height: 17.v,
              width: 75.h,
              radius: BorderRadius.circular(5.h),
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom: 8.v))
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildChipViewSection1(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return Wrap(
        runSpacing: 8.v,
        spacing: 8.h,
        children: List<Widget>.generate(
            ref
                    .watch(hotelRoomNotifier)
                    .k1ModelObj
                    ?.chipviewsection2ItemList
                    .length ??
                0, (index) {
          Chipviewsection2ItemModel model = ref
                  .watch(hotelRoomNotifier)
                  .k1ModelObj
                  ?.chipviewsection2ItemList[index] ??
              Chipviewsection2ItemModel();
          return Chipviewsection2ItemWidget(model,
              onSelectedChipView2: (value) {
            ref
                .read(hotelRoomNotifier.notifier)
                .onSelectedChipView2(index, value);
          });
        }),
      );
    });
  }

  /// Common widget
  Widget _buildRowSection(
    BuildContext context, {
    required String priceText,
    required String title,
  }) {
    return Row(children: [
      Text(priceText,
          style: theme.textTheme.headlineLarge!.copyWith(
              color: theme.colorScheme.secondaryContainer.withOpacity(1))),
      Padding(
          padding: EdgeInsets.only(left: 9.h, top: 14.v, bottom: 3.v),
          child: Text(title,
              style: theme.textTheme.bodyLarge!.copyWith(
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(1))))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
