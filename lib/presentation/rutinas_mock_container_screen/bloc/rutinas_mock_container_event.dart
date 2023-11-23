// ignore_for_file: must_be_immutable

part of 'rutinas_mock_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RutinasMockContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RutinasMockContainerEvent extends Equatable {}

/// Event that is dispatched when the RutinasMockContainer widget is first created.
class RutinasMockContainerInitialEvent extends RutinasMockContainerEvent {
  @override
  List<Object?> get props => [];
}
