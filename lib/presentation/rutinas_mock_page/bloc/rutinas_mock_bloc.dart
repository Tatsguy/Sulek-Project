import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/rutinasmock_item_model.dart';
import 'package:sulek_fit/presentation/rutinas_mock_page/models/rutinas_mock_model.dart';
part 'rutinas_mock_event.dart';
part 'rutinas_mock_state.dart';

/// A bloc that manages the state of a RutinasMock according to the event that is dispatched to it.
class RutinasMockBloc extends Bloc<RutinasMockEvent, RutinasMockState> {
  RutinasMockBloc(RutinasMockState initialState) : super(initialState) {
    on<RutinasMockInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RutinasMockInitialEvent event,
    Emitter<RutinasMockState> emit,
  ) async {
    emit(state.copyWith(
        rutinasMockModelObj: state.rutinasMockModelObj?.copyWith(
      rutinasmockItemList: fillRutinasmockItemList(),
    )));
  }

  List<RutinasmockItemModel> fillRutinasmockItemList() {
    return [
      RutinasmockItemModel(miRutina: "Mi rutina", dasCounter: "5 días"),
      RutinasmockItemModel(miRutina: "Mi rutina", dasCounter: "5 días"),
      RutinasmockItemModel(miRutina: "Mi rutina", dasCounter: "5 días")
    ];
  }
}
