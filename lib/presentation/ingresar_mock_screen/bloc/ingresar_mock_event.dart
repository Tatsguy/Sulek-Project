// ignore_for_file: must_be_immutable

part of 'ingresar_mock_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///IngresarMock widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class IngresarMockEvent extends Equatable {}

/// Event that is dispatched when the IngresarMock widget is first created.
class IngresarMockInitialEvent extends IngresarMockEvent {
  @override
  List<Object?> get props => [];
}
