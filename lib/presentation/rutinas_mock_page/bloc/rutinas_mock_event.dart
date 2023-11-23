// ignore_for_file: must_be_immutable

part of 'rutinas_mock_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RutinasMock widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RutinasMockEvent extends Equatable {}

/// Event that is dispatched when the RutinasMock widget is first created.
class RutinasMockInitialEvent extends RutinasMockEvent {
  @override
  List<Object?> get props => [];
}
