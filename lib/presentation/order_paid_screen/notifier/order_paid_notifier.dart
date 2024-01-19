import 'package:equatable/equatable.dart';

import '/core/app_export.dart';
import 'package:hotel_booking/presentation/order_paid_screen/models/order_paid_model.dart';
part 'order_paid_state.dart';

final orderPaidNotifier =
    StateNotifierProvider<OrderPaidNotifier, OrderPaidState>((ref) =>
        OrderPaidNotifier(OrderPaidState(orderPaidModelObj: OrderPaidModel())));

/// A notifier that manages the state of a OrderPaid according to the event that is dispatched to it.
class OrderPaidNotifier extends StateNotifier<OrderPaidState> {
  OrderPaidNotifier(OrderPaidState super.state);
}
