import 'package:flutter/material.dart';

import '/core/app_export.dart';

class AppRoutes {
  static const String hotelScreen = '/hotel_screen';

  static const String hotelRoomScreen = '/hotel_room_screen';

  static const String hotelBookingScreen = '/hotel_booking_screen';

  static const String orderPaidScreen = '/order_paid_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    hotelScreen: (context) => HotelScreen(),
    hotelRoomScreen: (context) => HotelRoomScreen(),
    hotelBookingScreen: (context) => HotelBookingScreen(),
    orderPaidScreen: (context) => OrderPaidScreen(),
    initialRoute: (context) => HotelScreen(),
  };
}
