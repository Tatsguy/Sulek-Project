// ignore_for_file: must_be_immutable

part of 'splash_mock_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SplashMock widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SplashMockEvent extends Equatable {}

/// Event that is dispatched when the SplashMock widget is first created.
class SplashMockInitialEvent extends SplashMockEvent {
  @override
  List<Object?> get props => [];
}
