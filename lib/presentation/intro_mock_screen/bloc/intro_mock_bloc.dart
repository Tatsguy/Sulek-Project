import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sulek_fit/presentation/intro_mock_screen/models/intro_mock_model.dart';
part 'intro_mock_event.dart';
part 'intro_mock_state.dart';

/// A bloc that manages the state of a IntroMock according to the event that is dispatched to it.
class IntroMockBloc extends Bloc<IntroMockEvent, IntroMockState> {
  IntroMockBloc(IntroMockState initialState) : super(initialState) {
    on<IntroMockInitialEvent>(_onInitialize);
  }

  _onInitialize(
    IntroMockInitialEvent event,
    Emitter<IntroMockState> emit,
  ) async {}
}
