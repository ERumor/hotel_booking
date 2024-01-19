import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_text_form_field.dart';
import '../../notifier/hotel_booking_notifier.dart';

class PassportExpiry extends StatelessWidget {
  const PassportExpiry({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return CustomTextFormField(
        controller: ref.watch(hotelBookingNotifier).passportExpiryController,
        focusNode: ref.watch(hotelBookingNotifier).passportExpiryFocusNode,
        hintText: "Срок действия загранпаспорта",
        textInputAction: TextInputAction.done,
        autofocus: false,
      );
    });
  }
}
