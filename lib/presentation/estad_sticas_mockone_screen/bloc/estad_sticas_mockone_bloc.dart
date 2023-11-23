import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sulek_fit/presentation/estad_sticas_mockone_screen/models/estad_sticas_mockone_model.dart';
part 'estad_sticas_mockone_event.dart';
part 'estad_sticas_mockone_state.dart';

/// A bloc that manages the state of a EstadSticasMockone according to the event that is dispatched to it.
class EstadSticasMockoneBloc
    extends Bloc<EstadSticasMockoneEvent, EstadSticasMockoneState> {
  EstadSticasMockoneBloc(EstadSticasMockoneState initialState)
      : super(initialState) {
    on<EstadSticasMockoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EstadSticasMockoneInitialEvent event,
    Emitter<EstadSticasMockoneState> emit,
  ) async {}
}
