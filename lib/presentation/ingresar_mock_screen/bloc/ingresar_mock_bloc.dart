import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sulek_fit/presentation/ingresar_mock_screen/models/ingresar_mock_model.dart';
part 'ingresar_mock_event.dart';
part 'ingresar_mock_state.dart';

/// A bloc that manages the state of a IngresarMock according to the event that is dispatched to it.
class IngresarMockBloc extends Bloc<IngresarMockEvent, IngresarMockState> {
  IngresarMockBloc(IngresarMockState initialState) : super(initialState) {
    on<IngresarMockInitialEvent>(_onInitialize);
  }

  _onInitialize(
    IngresarMockInitialEvent event,
    Emitter<IngresarMockState> emit,
  ) async {
    emit(state.copyWith(
        correoelectrnicoController: TextEditingController(),
        strokeHardController: TextEditingController()));
  }
}
