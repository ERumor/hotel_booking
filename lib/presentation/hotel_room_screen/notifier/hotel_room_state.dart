// ignore_for_file: must_be_immutable

part of 'hotel_room_notifier.dart';

/// Represents the state of K1 in the application.
class HotelRoomState extends Equatable {
  HotelRoomState({
    this.sliderIndex = 0,
    this.k1ModelObj,
  });

  HotelRoomModel? k1ModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        k1ModelObj,
      ];

  HotelRoomState copyWith({
    int? sliderIndex,
    HotelRoomModel? k1ModelObj,
  }) {
    return HotelRoomState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      k1ModelObj: k1ModelObj ?? this.k1ModelObj,
    );
  }
}
