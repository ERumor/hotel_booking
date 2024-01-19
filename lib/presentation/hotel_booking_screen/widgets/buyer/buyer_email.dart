import 'package:flutter/material.dart';

import 'package:hotel_booking/core/app_export.dart';
import '../../../../widgets/email_floating_text_field.dart';
import '../../notifier/hotel_booking_notifier.dart';

class BuyerEmail extends ConsumerStatefulWidget {
  const BuyerEmail({super.key});

  @override
  _BuyerEmailState createState() => _BuyerEmailState();
}

class _BuyerEmailState extends ConsumerState<BuyerEmail> {
  @override
  void dispose() {
    ref.watch(hotelBookingNotifier).emailController!.dispose();
    ref.watch(hotelBookingNotifier).emailFocusNode!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        bool isEmailValid = ref.watch(hotelBookingNotifier).isValidEmail;
        return EmailFloatingTextField(
          textInputType: TextInputType.emailAddress,
          controller: ref.watch(hotelBookingNotifier).emailController,
          focusNode: ref.watch(hotelBookingNotifier).emailFocusNode,
          labelText: "Почта",
          labelStyle: CustomTextStyles.bodyLargeOnPrimary,
          hintText: "Введите почту",
          autofocus: false,
          errorColor: isEmailValid
              ? Colors.transparent
              : Color(0xFFEB5757).withOpacity(0.15),
        );
      },
    );
  }
}
