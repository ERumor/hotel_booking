import 'package:flutter/material.dart';

import '../models/slider_model.dart';
import 'package:hotel_booking/core/app_export.dart';

// ignore: must_be_immutable
class SliderWidget extends StatelessWidget {
  SliderWidget(this.sliderModelObj, {super.key});

  SliderModel sliderModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgImage20,
        height: 257.v,
        width: 343.h,
        radius: BorderRadius.circular(
          15.h,
        ),
      ),
    );
  }
}
