// ignore_for_file: must_be_immutable

part of 'calendario_mockone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CalendarioMockone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CalendarioMockoneEvent extends Equatable {}

/// Event that is dispatched when the CalendarioMockone widget is first created.
class CalendarioMockoneInitialEvent extends CalendarioMockoneEvent {
  @override
  List<Object?> get props => [];
}
