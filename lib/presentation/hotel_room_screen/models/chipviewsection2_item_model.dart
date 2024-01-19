// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [chipviewsection2_item_widget] screen.
class Chipviewsection2ItemModel extends Equatable {
  Chipviewsection2ItemModel({
    this.widget,
    this.isSelected,
  }) {
    widget = widget ?? "Только завтра или ужин";
    isSelected = isSelected ?? false;
  }

  String? widget;

  bool? isSelected;

  Chipviewsection2ItemModel copyWith({
    String? widget,
    bool? isSelected,
  }) {
    return Chipviewsection2ItemModel(
      widget: widget ?? this.widget,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [widget, isSelected];
}
