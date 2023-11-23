import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sulek_fit/presentation/configuraci_n_mocktwo_screen/models/configuraci_n_mocktwo_model.dart';
part 'configuraci_n_mocktwo_event.dart';
part 'configuraci_n_mocktwo_state.dart';

/// A bloc that manages the state of a ConfiguraciNMocktwo according to the event that is dispatched to it.
class ConfiguraciNMocktwoBloc
    extends Bloc<ConfiguraciNMocktwoEvent, ConfiguraciNMocktwoState> {
  ConfiguraciNMocktwoBloc(ConfiguraciNMocktwoState initialState)
      : super(initialState) {
    on<ConfiguraciNMocktwoInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<ConfiguraciNMocktwoState> emit,
  ) {
    emit(state.copyWith(isSelectedSwitch: event.value));
  }

  _onInitialize(
    ConfiguraciNMocktwoInitialEvent event,
    Emitter<ConfiguraciNMocktwoState> emit,
  ) async {
    emit(state.copyWith(isSelectedSwitch: false));
  }
}
