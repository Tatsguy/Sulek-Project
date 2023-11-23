// ignore_for_file: must_be_immutable

part of 'calendario_mockone_bloc.dart';

/// Represents the state of CalendarioMockone in the application.
class CalendarioMockoneState extends Equatable {
  CalendarioMockoneState({
    this.rangeStart,
    this.rangeEnd,
    this.selectedDay,
    this.focusedDay,
    this.rangeSelectionMode = RangeSelectionMode.toggledOn,
    this.calendarioMockoneModelObj,
  });

  CalendarioMockoneModel? calendarioMockoneModelObj;

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  DateTime? focusedDay;

  RangeSelectionMode rangeSelectionMode;

  @override
  List<Object?> get props => [
        rangeStart,
        rangeEnd,
        selectedDay,
        focusedDay,
        rangeSelectionMode,
        calendarioMockoneModelObj,
      ];
  CalendarioMockoneState copyWith({
    DateTime? rangeStart,
    DateTime? rangeEnd,
    DateTime? selectedDay,
    DateTime? focusedDay,
    RangeSelectionMode? rangeSelectionMode,
    CalendarioMockoneModel? calendarioMockoneModelObj,
  }) {
    return CalendarioMockoneState(
      rangeStart: rangeStart ?? this.rangeStart,
      rangeEnd: rangeEnd ?? this.rangeEnd,
      selectedDay: selectedDay ?? this.selectedDay,
      focusedDay: focusedDay ?? this.focusedDay,
      rangeSelectionMode: rangeSelectionMode ?? this.rangeSelectionMode,
      calendarioMockoneModelObj:
          calendarioMockoneModelObj ?? this.calendarioMockoneModelObj,
    );
  }
}
