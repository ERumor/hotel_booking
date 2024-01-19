// ignore_for_file: must_be_immutable

part of 'order_paid_notifier.dart';

/// Represents the state of OrderPaid in the application.
class OrderPaidState extends Equatable {
  OrderPaidState({this.orderPaidModelObj});

  OrderPaidModel? orderPaidModelObj;

  @override
  List<Object?> get props => [
        orderPaidModelObj,
      ];

  OrderPaidState copyWith({OrderPaidModel? orderPaidModelObj}) {
    return OrderPaidState(
      orderPaidModelObj: orderPaidModelObj ?? this.orderPaidModelObj,
    );
  }
}
