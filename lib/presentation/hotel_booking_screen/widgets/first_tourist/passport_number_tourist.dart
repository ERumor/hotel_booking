import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_text_form_field.dart';
import '../../notifier/hotel_booking_notifier.dart';

class PassportNumber extends StatelessWidget {
  const PassportNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return CustomTextFormField(
        controller: ref.watch(hotelBookingNotifier).passportNumberController,
        focusNode: ref.watch(hotelBookingNotifier).passportNumberFocusNode,
        hintText: "Номер загранпаспорта",
        autofocus: false,
      );
    });
  }
}
