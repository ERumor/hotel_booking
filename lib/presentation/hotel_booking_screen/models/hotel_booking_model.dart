// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [hotel_booking_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HotelBookingModel extends Equatable {
  HotelBookingModel() {}

  HotelBookingModel copyWith() {
    return HotelBookingModel();
  }

  @override
  List<Object?> get props => [];
}
