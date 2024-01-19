// ignore_for_file: must_be_immutable

part of 'hotel_booking_notifier.dart';

/// Represents the state of HotelBooking in the application.
class HotelBookingState extends Equatable {
  HotelBookingState({
    required this.phoneNumberController,
    this.phoneNumberFocusNode,
    this.emailController,
    this.emailFocusNode,
    required this.isValidEmail,
    this.firstNameController,
    this.firstNameFocusNode,
    this.lastNameController,
    this.lastNameFocusNode,
    this.birthDateController,
    this.birthDateFocusNode,
    this.nationalityController,
    this.nationalityFocusNode,
    this.passportNumberController,
    this.passportNumberFocusNode,
    this.passportExpiryController,
    this.passportExpiryFocusNode,
    this.hotelBookingModelObj,
  });

  final MaskedTextController phoneNumberController;
  FocusNode? phoneNumberFocusNode;

  TextEditingController? emailController;
  FocusNode? emailFocusNode;
  final bool isValidEmail;

  TextEditingController? firstNameController;
  FocusNode? firstNameFocusNode;

  TextEditingController? lastNameController;
  FocusNode? lastNameFocusNode;

  TextEditingController? birthDateController;
  FocusNode? birthDateFocusNode;

  TextEditingController? nationalityController;
  FocusNode? nationalityFocusNode;

  TextEditingController? passportNumberController;
  FocusNode? passportNumberFocusNode;

  TextEditingController? passportExpiryController;
  FocusNode? passportExpiryFocusNode;

  HotelBookingModel? hotelBookingModelObj;

  void checkEmail() {
    final email = emailController?.text ?? '';
    var isValidEmail = _validateEmail(email);
    isValidEmail = isValidEmail;
  }

  bool _validateEmail(String email) {
    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,}$');
    return emailRegex.hasMatch(email);
  }

  @override
  List<Object?> get props => [
        phoneNumberController,
        phoneNumberFocusNode,
        emailController,
        emailFocusNode,
        isValidEmail,
        firstNameController,
        firstNameFocusNode,
        lastNameController,
        lastNameFocusNode,
        birthDateController,
        birthDateFocusNode,
        nationalityController,
        nationalityFocusNode,
        passportNumberController,
        passportNumberFocusNode,
        passportExpiryController,
        passportExpiryFocusNode,
        hotelBookingModelObj,
      ];

  HotelBookingState copyWith({
    MaskedTextController? phoneNumberController,
    FocusNode? phoneNumberFocusNode,
    TextEditingController? emailController,
    FocusNode? emailFocusNode,
    bool? isValidEmail,
    TextEditingController? firstNameController,
    FocusNode? firstNameFocusNode,
    TextEditingController? lastNameController,
    FocusNode? lastNameFocusNode,
    TextEditingController? birthDateController,
    FocusNode? birthDateFocusNode,
    TextEditingController? nationalityController,
    FocusNode? nationalityFocusNode,
    TextEditingController? passportNumberController,
    FocusNode? passportNumberFocusNode,
    TextEditingController? passportExpiryController,
    FocusNode? passportExpiryFocusNode,
    HotelBookingModel? hotelBookingModelObj,
  }) {
    return HotelBookingState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      phoneNumberFocusNode: phoneNumberFocusNode ?? this.phoneNumberFocusNode,
      emailController: emailController ?? this.emailController,
      emailFocusNode: emailFocusNode ?? this.emailFocusNode,
      firstNameController: firstNameController ?? this.firstNameController,
      firstNameFocusNode: firstNameFocusNode ?? this.firstNameFocusNode,
      lastNameController: lastNameController ?? this.lastNameController,
      lastNameFocusNode: lastNameFocusNode ?? this.lastNameFocusNode,
      birthDateController: birthDateController ?? this.birthDateController,
      birthDateFocusNode: birthDateFocusNode ?? this.birthDateFocusNode,
      nationalityController:
          nationalityController ?? this.nationalityController,
      nationalityFocusNode: nationalityFocusNode ?? this.nationalityFocusNode,
      passportNumberController:
          passportNumberController ?? this.passportNumberController,
      passportNumberFocusNode:
          passportNumberFocusNode ?? this.phoneNumberFocusNode,
      passportExpiryController:
          passportExpiryController ?? this.passportExpiryController,
      passportExpiryFocusNode:
          passportExpiryFocusNode ?? this.passportExpiryFocusNode,
      hotelBookingModelObj: hotelBookingModelObj ?? this.hotelBookingModelObj,
      isValidEmail: isValidEmail ?? this.isValidEmail,
    );
  }
}
