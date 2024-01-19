import 'package:flutter/material.dart';

import 'package:hotel_booking/core/app_export.dart';
import 'package:hotel_booking/presentation/hotel_booking_screen/widgets/add_tourist.dart';
import 'package:hotel_booking/presentation/hotel_booking_screen/widgets/first_tourist/first_tourist.dart';
import 'package:hotel_booking/presentation/hotel_booking_screen/widgets/paid/paid.dart';
import 'package:hotel_booking/presentation/hotel_booking_screen/widgets/second_tourist/second_tourist.dart';
import 'notifier/hotel_booking_notifier.dart';
import 'package:hotel_booking/presentation/hotel_booking_screen/widgets/booking_appbar.dart';
import 'package:hotel_booking/presentation/hotel_booking_screen/widgets/booking_button.dart';
import 'package:hotel_booking/presentation/hotel_booking_screen/widgets/booking_data.dart';
import 'package:hotel_booking/presentation/hotel_booking_screen/widgets/hotel_description.dart';
import 'widgets/buyer/buyer_info.dart';

class HotelBookingScreen extends ConsumerStatefulWidget {
  const HotelBookingScreen({super.key});

  @override
  HotelBookingScreenState createState() => HotelBookingScreenState();
}

class HotelBookingScreenState extends ConsumerState<HotelBookingScreen> {
  ///DISPOSE CONTROLLERS, FOCUSNODES
  @override
  void dispose() {
    ref.watch(hotelBookingNotifier).firstNameController!.dispose();
    ref.watch(hotelBookingNotifier).firstNameFocusNode!.dispose();
    ref.watch(hotelBookingNotifier).lastNameController!.dispose();
    ref.watch(hotelBookingNotifier).lastNameFocusNode!.dispose();
    ref.watch(hotelBookingNotifier).birthDateController!.dispose();
    ref.watch(hotelBookingNotifier).birthDateFocusNode!.dispose();
    ref.watch(hotelBookingNotifier).nationalityController!.dispose();
    ref.watch(hotelBookingNotifier).nationalityFocusNode!.dispose();
    ref.watch(hotelBookingNotifier).passportNumberController!.dispose();
    ref.watch(hotelBookingNotifier).passportNumberFocusNode!.dispose();
    ref.watch(hotelBookingNotifier).passportExpiryController!.dispose();
    ref.watch(hotelBookingNotifier).passportExpiryFocusNode!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: BookingAppbar(),
          body: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 8.v),
                Expanded(
                  child: SingleChildScrollView(
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.onDrag,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 5.v),
                      child: Column(
                        children: [
                          HotelDescription(),
                          SizedBox(height: 8.v),
                          BookingData(),
                          SizedBox(height: 8.v),
                          BuyerInfo(),
                          SizedBox(height: 8.v),
                          FirstTourist(),
                          SizedBox(height: 8.v),
                          SecondTourist(),
                          SizedBox(height: 8.v),
                          AddTourist(),
                          SizedBox(height: 8.v),
                          Paid(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BookingButton(),
        ),
      ),
    );
  }
}
