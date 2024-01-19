import 'package:equatable/equatable.dart';

import '/core/app_export.dart';
import '../models/slider_model.dart';
import '../models/peculiarities_model.dart';
import 'package:hotel_booking/presentation/hotel_screen/models/hotel_model.dart';
part 'hotel_state.dart';

final hotelNotifier = StateNotifierProvider<HotelNotifier, HotelState>(
  (ref) => HotelNotifier(
    HotelState(
      sliderIndex: 3,
      hotelModelObj: HotelModel(
        sliderList: List.generate(3, (index) => SliderModel()),
        aboutHotelList: List.generate(4, (index) => PeculiaritiesModel()),
      ),
    ),
  ),
);

/// A notifier that manages the state of a Hotel according to the event that is dispatched to it.
class HotelNotifier extends StateNotifier<HotelState> {
  HotelNotifier(HotelState state) : super(state) {}

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<PeculiaritiesModel> newList =
        List<PeculiaritiesModel>.from(state.hotelModelObj!.aboutHotelList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        hotelModelObj: state.hotelModelObj?.copyWith(aboutHotelList: newList));
  }
}
