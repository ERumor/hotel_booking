import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_floating_text_field.dart';
import '../../notifier/hotel_booking_notifier.dart';

class FirstName extends StatelessWidget {
  const FirstName({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return CustomFloatingTextField(
        controller: ref.watch(hotelBookingNotifier).firstNameController,
        focusNode: ref.watch(hotelBookingNotifier).firstNameFocusNode,
        labelText: "Имя",
        labelStyle: CustomTextStyles.bodyLargeOnPrimary,
        hintText: "Иван",
        autofocus: false,
      );
    });
  }
}
