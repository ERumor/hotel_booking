import 'package:flutter/material.dart';
import 'package:hotel_booking/presentation/hotel_screen/widgets/hotel_button.dart';
import 'package:hotel_booking/presentation/hotel_screen/widgets/hotel_appbar.dart';
import 'package:hotel_booking/presentation/hotel_screen/widgets/slider_carousel.dart';

import 'widgets/about_widget.dart';
import 'package:hotel_booking/core/app_export.dart';

class HotelScreen extends ConsumerStatefulWidget {
  const HotelScreen({super.key});

  @override
  HotelScreenState createState() => HotelScreenState();
}

class HotelScreenState extends ConsumerState<HotelScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: HotelAppbar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  SliderCarousel(),
                  SizedBox(height: 23.v),
                  About(),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: HotelButton(),
      ),
    );
  }
}
