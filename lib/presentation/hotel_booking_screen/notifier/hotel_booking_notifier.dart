import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

import '/core/app_export.dart';
import 'package:hotel_booking/presentation/hotel_booking_screen/models/hotel_booking_model.dart';
part 'hotel_booking_state.dart';

final hotelBookingNotifier =
    StateNotifierProvider<HotelBookingNotifier, HotelBookingState>(
  (ref) => HotelBookingNotifier(
    HotelBookingState(
      phoneNumberController: MaskedTextController(mask: '+7 (000)-000-00-00'),
      phoneNumberFocusNode: FocusNode(),
      emailController: TextEditingController(),
      emailFocusNode: FocusNode(),
      isValidEmail: false,
      firstNameController: TextEditingController(),
      firstNameFocusNode: FocusNode(),
      lastNameController: TextEditingController(),
      lastNameFocusNode: FocusNode(),
      birthDateController: TextEditingController(),
      birthDateFocusNode: FocusNode(),
      nationalityController: TextEditingController(),
      nationalityFocusNode: FocusNode(),
      passportNumberController: TextEditingController(),
      passportNumberFocusNode: FocusNode(),
      passportExpiryController: TextEditingController(),
      passportExpiryFocusNode: FocusNode(),
      hotelBookingModelObj: HotelBookingModel(),
    ),
  ),
);

/// A notifier that manages the state of a Hotel Booking according to the event that is dispatched to it.
class HotelBookingNotifier extends StateNotifier<HotelBookingState> {
  HotelBookingNotifier(HotelBookingState super.state);

  void checkEmail() {
    final email = state.emailController?.text ?? '';
    final isValidEmail = _validateEmail(email);
    state = state.copyWith(isValidEmail: isValidEmail);
  }

  bool _validateEmail(String email) {
    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,}$');
    return emailRegex.hasMatch(email);
  }
}
