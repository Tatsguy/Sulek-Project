import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:sulek_fit/presentation/calendario_mockone_screen/models/calendario_mockone_model.dart';
part 'calendario_mockone_event.dart';
part 'calendario_mockone_state.dart';

/// A bloc that manages the state of a CalendarioMockone according to the event that is dispatched to it.
class CalendarioMockoneBloc
    extends Bloc<CalendarioMockoneEvent, CalendarioMockoneState> {
  CalendarioMockoneBloc(CalendarioMockoneState initialState)
      : super(initialState) {
    on<CalendarioMockoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CalendarioMockoneInitialEvent event,
    Emitter<CalendarioMockoneState> emit,
  ) async {
    emit(state.copyWith(rangeSelectionMode: RangeSelectionMode.toggledOn));
  }
}
