import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_text_form_field.dart';
import '../../notifier/hotel_booking_notifier.dart';

class BirthDate extends StatelessWidget {
  const BirthDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return CustomTextFormField(
        textInputType: TextInputType.datetime,
        controller: ref.watch(hotelBookingNotifier).birthDateController,
        focusNode: ref.watch(hotelBookingNotifier).birthDateFocusNode,
        hintText: "Дата рождения",
        autofocus: false,
      );
    });
  }
}
