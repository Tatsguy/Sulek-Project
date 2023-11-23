import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sulek_fit/presentation/rutinas_mock_container_screen/models/rutinas_mock_container_model.dart';
part 'rutinas_mock_container_event.dart';
part 'rutinas_mock_container_state.dart';

/// A bloc that manages the state of a RutinasMockContainer according to the event that is dispatched to it.
class RutinasMockContainerBloc
    extends Bloc<RutinasMockContainerEvent, RutinasMockContainerState> {
  RutinasMockContainerBloc(RutinasMockContainerState initialState)
      : super(initialState) {
    on<RutinasMockContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RutinasMockContainerInitialEvent event,
    Emitter<RutinasMockContainerState> emit,
  ) async {}
}
