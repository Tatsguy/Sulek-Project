// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'rutinasmock_item_model.dart';

/// This class defines the variables used in the [rutinas_mock_page],
/// and is typically used to hold data that is passed between different parts of the application.
class RutinasMockModel extends Equatable {
  RutinasMockModel({this.rutinasmockItemList = const []}) {}

  List<RutinasmockItemModel> rutinasmockItemList;

  RutinasMockModel copyWith({List<RutinasmockItemModel>? rutinasmockItemList}) {
    return RutinasMockModel(
      rutinasmockItemList: rutinasmockItemList ?? this.rutinasmockItemList,
    );
  }

  @override
  List<Object?> get props => [rutinasmockItemList];
}
