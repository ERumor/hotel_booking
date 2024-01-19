import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_text_form_field.dart';
import '../../notifier/hotel_booking_notifier.dart';

class Nationality extends StatelessWidget {
  const Nationality({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return CustomTextFormField(
        controller: ref.watch(hotelBookingNotifier).nationalityController,
        focusNode: ref.watch(hotelBookingNotifier).nationalityFocusNode,
        hintText: "Гражданство",
        autofocus: false,
      );
    });
  }
}
