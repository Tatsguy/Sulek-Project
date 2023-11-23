// ignore_for_file: must_be_immutable

part of 'intro_mock_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///IntroMock widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class IntroMockEvent extends Equatable {}

/// Event that is dispatched when the IntroMock widget is first created.
class IntroMockInitialEvent extends IntroMockEvent {
  @override
  List<Object?> get props => [];
}
