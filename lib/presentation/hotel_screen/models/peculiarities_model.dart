// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [peculiarities_widget].
class PeculiaritiesModel extends Equatable {
  PeculiaritiesModel({
    this.widget,
    this.isSelected,
  }) {
    widget = widget ?? "3-я линия";
    isSelected = isSelected ?? false;
  }

  String? widget;

  bool? isSelected;

  PeculiaritiesModel copyWith({
    String? widget,
    bool? isSelected,
  }) {
    return PeculiaritiesModel(
      widget: widget ?? this.widget,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [widget, isSelected];
}
