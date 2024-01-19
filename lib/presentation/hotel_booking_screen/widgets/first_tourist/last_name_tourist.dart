import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_floating_text_field.dart';
import '../../notifier/hotel_booking_notifier.dart';

class LastName extends StatelessWidget {
  const LastName({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return CustomFloatingTextField(
        controller: ref.watch(hotelBookingNotifier).lastNameController,
        focusNode: ref.watch(hotelBookingNotifier).lastNameFocusNode,
        labelText: "Фамилия",
        labelStyle: CustomTextStyles.bodyLargeOnPrimary,
        hintText: "Иванов",
        autofocus: false,
      );
    });
  }
}
