// ignore_for_file: must_be_immutable

part of 'hotel_notifier.dart';

/// Represents the state of HotelScreen in the application.
class HotelState extends Equatable {
  HotelState({this.sliderIndex = 3, this.hotelModelObj});

  HotelModel? hotelModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        hotelModelObj,
      ];

  HotelState copyWith({
    int? sliderIndex,
    HotelModel? hotelModelObj,
  }) {
    return HotelState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      hotelModelObj: hotelModelObj ?? this.hotelModelObj,
    );
  }
}
