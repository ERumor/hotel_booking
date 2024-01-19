import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:hotel_booking/core/app_export.dart';

import '../notifier/hotel_notifier.dart';
import 'basic_data.dart';

class SliderCarousel extends StatefulWidget {
  const SliderCarousel({super.key});

  @override
  State<SliderCarousel> createState() => _SliderCarouselState();
}

class _SliderCarouselState extends State<SliderCarousel> {
  final List<String> imagesList = [
    'https://www.atorus.ru/sites/default/files/upload/image/News/56149/Club_Priv%C3%A9_by_Belek_Club_House.jpg',
    'https://media.admagazine.ru/photos/61408b2f4311246f36873963/16:9/w_1280,c_limit/w2000%20-%202020-07-14T164056.159.jpg',
    'https://travelata.ru/blog/wp-content/uploads/2019/06/Starlight-Convention-Center-Thalasso-Spa.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 257.v,
            width: 343.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Consumer(
                  builder: (context, ref, _) {
                    return CarouselSlider.builder(
                      options: CarouselOptions(
                        height: 257.v,
                        initialPage: 0,
                        autoPlay: true,
                        viewportFraction: 1.0,
                        enableInfiniteScroll: false,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (
                          index,
                          reason,
                        ) {
                          ref.watch(hotelNotifier).sliderIndex = index;
                        },
                      ),
                      itemCount: imagesList.length,
                      itemBuilder:
                          (BuildContext context, int index, int realIndex) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.network(
                                  imagesList[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Consumer(
                    builder: (context, ref, _) {
                      return Container(
                        height: 17.v,
                        margin: EdgeInsets.only(bottom: 8.v),
                        child: AnimatedSmoothIndicator(
                          activeIndex: ref.watch(hotelNotifier).sliderIndex,
                          count: ref
                                  .watch(hotelNotifier)
                                  .hotelModelObj
                                  ?.sliderList
                                  .length ??
                              0,
                          axisDirection: Axis.horizontal,
                          effect: ScrollingDotsEffect(
                            spacing: 5,
                            activeDotColor: theme.colorScheme.secondaryContainer
                                .withOpacity(1),
                            dotColor: theme.colorScheme.secondaryContainer
                                .withOpacity(0.22),
                            dotHeight: 7.v,
                            dotWidth: 7.h,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          BasicData(),
        ],
      ),
    );
  }
}
