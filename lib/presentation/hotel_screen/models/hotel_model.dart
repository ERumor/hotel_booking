// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'slider_model.dart';
import 'peculiarities_model.dart';

/// This class defines the variables used in the [hotel_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HotelModel extends Equatable {
  HotelModel({
    this.sliderList = const [],
    this.aboutHotelList = const [],
  }) {}

  List<SliderModel> sliderList = [];

  List<PeculiaritiesModel> aboutHotelList;

  HotelModel copyWith({
    List<SliderModel>? sliderList,
    List<PeculiaritiesModel>? aboutHotelList,
  }) {
    return HotelModel(
      sliderList: sliderList ?? this.sliderList,
      aboutHotelList: aboutHotelList ?? this.aboutHotelList,
    );
  }

  @override
  List<Object?> get props => [sliderList, aboutHotelList];
}
