// ignore_for_file: must_be_immutable

part of 'temporizador_mockthree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TemporizadorMockthree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TemporizadorMockthreeEvent extends Equatable {}

/// Event that is dispatched when the TemporizadorMockthree widget is first created.
class TemporizadorMockthreeInitialEvent extends TemporizadorMockthreeEvent {
  @override
  List<Object?> get props => [];
}
