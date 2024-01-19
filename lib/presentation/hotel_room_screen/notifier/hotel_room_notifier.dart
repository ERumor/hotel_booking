import 'package:equatable/equatable.dart';

import '/core/app_export.dart';
import '../models/one_item_model.dart';
import '../models/chipviewsection_item_model.dart';
import '../models/chipviewsection2_item_model.dart';
import 'package:hotel_booking/presentation/hotel_room_screen/models/hotel_room_model.dart';
part 'hotel_room_state.dart';

final hotelRoomNotifier =
    StateNotifierProvider<HotelRoomNotifier, HotelRoomState>(
  (ref) => HotelRoomNotifier(
    HotelRoomState(
      sliderIndex: 0,
      k1ModelObj: HotelRoomModel(
        oneItemList: List.generate(1, (index) => OneItemModel()),
        chipviewsectionItemList:
            List.generate(3, (index) => ChipviewsectionItemModel()),
        chipviewsection2ItemList:
            List.generate(3, (index) => Chipviewsection2ItemModel()),
      ),
    ),
  ),
);

/// A notifier that manages the state of a HotelRoom according to the event that is dispatched to it.
class HotelRoomNotifier extends StateNotifier<HotelRoomState> {
  HotelRoomNotifier(HotelRoomState super.state);

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<ChipviewsectionItemModel> newList =
        List<ChipviewsectionItemModel>.from(
            state.k1ModelObj!.chipviewsectionItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        k1ModelObj:
            state.k1ModelObj?.copyWith(chipviewsectionItemList: newList));
  }

  void onSelectedChipView2(
    int index,
    bool value,
  ) {
    List<Chipviewsection2ItemModel> newList =
        List<Chipviewsection2ItemModel>.from(
            state.k1ModelObj!.chipviewsection2ItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        k1ModelObj:
            state.k1ModelObj?.copyWith(chipviewsection2ItemList: newList));
  }
}
