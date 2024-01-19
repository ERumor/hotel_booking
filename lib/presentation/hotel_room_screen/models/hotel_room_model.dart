// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

import 'one_item_model.dart';
import 'chipviewsection_item_model.dart';
import 'chipviewsection2_item_model.dart';

/// This class defines the variables used in the [hotel_room_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HotelRoomModel extends Equatable {
  HotelRoomModel({
    this.oneItemList = const [],
    this.chipviewsectionItemList = const [],
    this.chipviewsection2ItemList = const [],
  }) {}

  List<OneItemModel> oneItemList;

  List<ChipviewsectionItemModel> chipviewsectionItemList;

  List<Chipviewsection2ItemModel> chipviewsection2ItemList;

  HotelRoomModel copyWith({
    List<OneItemModel>? oneItemList,
    List<ChipviewsectionItemModel>? chipviewsectionItemList,
    List<Chipviewsection2ItemModel>? chipviewsection2ItemList,
  }) {
    return HotelRoomModel(
      oneItemList: oneItemList ?? this.oneItemList,
      chipviewsectionItemList:
          chipviewsectionItemList ?? this.chipviewsectionItemList,
      chipviewsection2ItemList:
          chipviewsection2ItemList ?? this.chipviewsection2ItemList,
    );
  }

  @override
  List<Object?> get props =>
      [oneItemList, chipviewsectionItemList, chipviewsection2ItemList];
}
