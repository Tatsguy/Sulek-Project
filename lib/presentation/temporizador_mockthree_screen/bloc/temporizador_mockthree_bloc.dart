import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sulek_fit/presentation/temporizador_mockthree_screen/models/temporizador_mockthree_model.dart';
part 'temporizador_mockthree_event.dart';
part 'temporizador_mockthree_state.dart';

/// A bloc that manages the state of a TemporizadorMockthree according to the event that is dispatched to it.
class TemporizadorMockthreeBloc
    extends Bloc<TemporizadorMockthreeEvent, TemporizadorMockthreeState> {
  TemporizadorMockthreeBloc(TemporizadorMockthreeState initialState)
      : super(initialState) {
    on<TemporizadorMockthreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TemporizadorMockthreeInitialEvent event,
    Emitter<TemporizadorMockthreeState> emit,
  ) async {}
}
