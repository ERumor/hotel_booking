// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [chipviewsection_item_widget] screen.
class ChipviewsectionItemModel extends Equatable {
  ChipviewsectionItemModel({
    this.widget,
    this.isSelected,
  }) {
    widget = widget ?? "Все включено";
    isSelected = isSelected ?? false;
  }

  String? widget;

  bool? isSelected;

  ChipviewsectionItemModel copyWith({
    String? widget,
    bool? isSelected,
  }) {
    return ChipviewsectionItemModel(
      widget: widget ?? this.widget,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [widget, isSelected];
}
