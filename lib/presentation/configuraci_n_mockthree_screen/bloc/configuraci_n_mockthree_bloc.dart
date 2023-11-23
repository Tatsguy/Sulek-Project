import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sulek_fit/presentation/configuraci_n_mockthree_screen/models/configuraci_n_mockthree_model.dart';
part 'configuraci_n_mockthree_event.dart';
part 'configuraci_n_mockthree_state.dart';

/// A bloc that manages the state of a ConfiguraciNMockthree according to the event that is dispatched to it.
class ConfiguraciNMockthreeBloc
    extends Bloc<ConfiguraciNMockthreeEvent, ConfiguraciNMockthreeState> {
  ConfiguraciNMockthreeBloc(ConfiguraciNMockthreeState initialState)
      : super(initialState) {
    on<ConfiguraciNMockthreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ConfiguraciNMockthreeInitialEvent event,
    Emitter<ConfiguraciNMockthreeState> emit,
  ) async {}
}
